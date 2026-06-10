#!/usr/bin/env python3
"""
AIRTA Reddit Monitor
====================
Monitors Reddit for relationship-strife posts matching target criteria.
When a match is found:
  1. Sends an email alert to your configured address
  2. Includes a pre-composed, personalized reply draft
  3. Tracks all seen/alerted posts in JSON to avoid duplicates across restarts
  4. Monitors upvote scores on your previous replies

This bot does NOT post automatically. You review each alert and reply manually.
That keeps it policy-compliant and your brand safe.

Usage:
  1. Copy .env.template to .env and fill in your credentials
  2. pip install -r requirements.txt
  3. python main.py

Author: Airta Corp
Version: 2.0.0
"""

import praw
import time
import smtplib
import json
import os
import random
from datetime import datetime, timedelta
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from dotenv import load_dotenv

# ── Load credentials from .env ────────────────────────────────────────────────
load_dotenv()

# ==================== CONFIGURATION ==========================================

# 1. Reddit API credentials (from .env)
CLIENT_ID     = os.getenv("REDDIT_CLIENT_ID")
CLIENT_SECRET = os.getenv("REDDIT_CLIENT_SECRET")
USER_AGENT    = "AIRTAMonitorBot v2.0 by /u/" + os.getenv("REDDIT_USERNAME", "YOUR_USERNAME")
REDDIT_USERNAME = os.getenv("REDDIT_USERNAME")
REDDIT_PASSWORD = os.getenv("REDDIT_PASSWORD")

# 2. Email alert settings (from .env)
SENDER_EMAIL      = os.getenv("SENDER_EMAIL",   "your-email@gmail.com")
RECEIVER_EMAIL    = os.getenv("RECEIVER_EMAIL",  "your-email@gmail.com")
GMAIL_APP_PASSWORD = os.getenv("GMAIL_APP_PASSWORD")

# 3. App store links (update when live in stores)
APP_NAME      = "AI Relationship Toxicity Analyzer"
ANDROID_LINK  = "https://play.google.com/store/apps/details?id=com.airta.airelationshiptoxicityanalyzer"
IOS_LINK      = "https://apps.apple.com/app/airta/id1234567890"
DEMO_LINK     = "https://airta.net/releases/airta-demo.apk"

# 4. Target subreddits (joined with + for multi-subreddit stream)
SUBREDDITS = (
    "relationship_advice"
    "+relationships"
    "+dating_advice"
    "+AmItheAsshole"
    "+BreakUps"
    "+survivorsofabuse"
    "+abusiverelationships"
)

# 5. Filtering criteria
MIN_BODY_LENGTH   = 300    # Ignore short posts — not enough context
MAX_POST_AGE_HOURS = 2     # Only alert on recent posts worth replying to
MIN_RELEVANCE_SCORE = 5    # Minimum keyword score to trigger an alert

# 6. Rate limiting — keeps your account from looking spammy
MAX_ALERTS_PER_DAY  = 10   # Max email alerts per 24 hours
REPLY_COOLDOWN_HOURS = 2   # Min hours between alerts for same subreddit

# 7. Persistence files
TRACKING_FILE     = "reddit_tracking.json"
REPLIED_FILE      = "replied_posts.json"

# ── Keyword scoring weights ───────────────────────────────────────────────────
# Strong relationship context (+2 each)
KEYWORDS_RELATIONSHIP_STRONG = [
    "partner", "boyfriend", "girlfriend", "husband", "wife", "spouse", "fiancé", "fiancee"
]
# Weak relationship context (+1 each)
KEYWORDS_RELATIONSHIP_WEAK = [
    "dating", "relationship", "SO", "significant other", "ex", "together"
]
# Strong toxicity indicators (+3 each — high signal)
KEYWORDS_TOXICITY_STRONG = [
    "gaslighting", "manipulative", "manipulation", "abusive", "controlling",
    "narcissist", "narcissistic", "coercive", "love bombing", "lovebombing",
    "emotional abuse", "verbal abuse", "walking on eggshells"
]
# Weak toxicity indicators (+1 each)
KEYWORDS_TOXICITY_WEAK = [
    "toxic", "unhealthy", "red flag", "red flags", "fight", "arguing",
    "trust issues", "jealous", "possessive", "threatening", "silent treatment",
    "isolating", "belittle", "disrespect", "blame", "guilt trip"
]

# =============================================================================


# ── Authenticate with Reddit ──────────────────────────────────────────────────
reddit = praw.Reddit(
    client_id=CLIENT_ID,
    client_secret=CLIENT_SECRET,
    user_agent=USER_AGENT,
    username=REDDIT_USERNAME,
    password=REDDIT_PASSWORD,
)


# ── Reply draft templates (rotates to avoid repetition) ──────────────────────
REPLY_TEMPLATES = [
    """\
Hey u/{author}, I'm really sorry you're going through this. What you're describing sounds \
genuinely exhausting, and it makes sense you're questioning it.

I actually built an app that might help you get some clarity — it's called the \
**[AI Relationship Toxicity Analyzer]({android_link})**. You feed it your text conversation \
and it uses AI to detect patterns like the ones you're describing: gaslighting, manipulation, \
emotional withholding, coercive control. It gives you a scored report so you can see the \
dynamic clearly, not just feel it.

Android: {android_link}
iOS: {ios_link}

Wishing you clarity and peace. You deserve both. 💙""",

    """\
u/{author} — what you're feeling is valid. Confusion is often the first sign that something \
isn't right.

I made an app called **[AIRTA – AI Relationship Toxicity Analyzer]({android_link})** that \
reads your actual text conversations and uses AI to identify toxic patterns — things like \
gaslighting, blame shifting, love bombing, and control. A lot of people find it helps cut \
through the fog when they're not sure if what they're experiencing is "normal."

Android: {android_link}  |  iOS: {ios_link}

Take care of yourself. 🙏""",

    """\
This kind of situation is really hard to see clearly when you're inside it. What you're \
describing — {first_keyword} — shows up in a lot of unhealthy dynamics.

I built an app specifically for this: **[AI Relationship Toxicity Analyzer]({android_link})**. \
You paste in your text history and it runs an AI analysis across 100+ psychological metrics. \
It helped me (and a lot of others) finally see patterns that felt invisible.

Android: {android_link}
iOS: {ios_link}

You're not overreacting. Trust that instinct.""",
]


class PostTracker:
    """
    Manages persistent tracking of seen posts, sent alerts, and replied posts.
    All data survives restarts via JSON files on disk.
    """

    def __init__(self):
        self.tracking  = self._load(TRACKING_FILE, {
            "seen_posts":    {},
            "alerted_posts": {},
            "last_cleanup":  datetime.now().isoformat(),
        })
        self.replied = self._load(REPLIED_FILE, {})

    # ── Persistence ──────────────────────────────────────────────────────────

    def _load(self, path, default):
        if os.path.exists(path):
            try:
                with open(path, "r") as f:
                    return json.load(f)
            except Exception:
                pass
        return default

    def _save_tracking(self):
        with open(TRACKING_FILE, "w") as f:
            json.dump(self.tracking, f, indent=2)

    def _save_replied(self):
        with open(REPLIED_FILE, "w") as f:
            json.dump(self.replied, f, indent=2)

    # ── State checks ─────────────────────────────────────────────────────────

    def has_seen(self, post_id):
        return post_id in self.tracking["seen_posts"]

    def has_alerted(self, post_id):
        return post_id in self.tracking["alerted_posts"]

    def has_replied(self, post_id):
        return post_id in self.replied

    # ── State mutations ───────────────────────────────────────────────────────

    def mark_seen(self, post_id, title, subreddit):
        self.tracking["seen_posts"][post_id] = {
            "first_seen": datetime.now().isoformat(),
            "title":      title,
            "subreddit":  subreddit,
        }
        self._save_tracking()

    def mark_alerted(self, post_id, title, url, score):
        self.tracking["alerted_posts"][post_id] = {
            "alerted_at":      datetime.now().isoformat(),
            "title":           title,
            "url":             url,
            "relevance_score": score,
        }
        self._save_tracking()

    def mark_replied(self, post_id, comment_id, title, url, subreddit):
        """Call this after you manually reply — paste the comment ID in the terminal prompt."""
        self.replied[post_id] = {
            "replied_at":    datetime.now().isoformat(),
            "comment_id":    comment_id,
            "title":         title,
            "url":           url,
            "subreddit":     subreddit,
            "score":         1,
            "last_checked":  datetime.now().isoformat(),
        }
        self._save_replied()

    # ── Rate limiting ─────────────────────────────────────────────────────────

    def recent_alert_count(self, hours=24):
        """How many alerts have been sent in the last N hours."""
        cutoff = datetime.now() - timedelta(hours=hours)
        return sum(
            1 for v in self.tracking["alerted_posts"].values()
            if datetime.fromisoformat(v["alerted_at"]) > cutoff
        )

    def hours_since_last_alert_for(self, subreddit):
        """Hours since last alert for a specific subreddit (throttle per sub)."""
        best = None
        for v in self.tracking["alerted_posts"].values():
            if v.get("subreddit") == subreddit:
                t = datetime.fromisoformat(v["alerted_at"])
                if best is None or t > best:
                    best = t
        if best is None:
            return 999
        return (datetime.now() - best).total_seconds() / 3600

    # ── Maintenance ───────────────────────────────────────────────────────────

    def cleanup(self, days=7):
        """Prune tracking data older than N days to keep files small."""
        cutoff = datetime.now() - timedelta(days=days)
        before = len(self.tracking["seen_posts"])
        self.tracking["seen_posts"] = {
            k: v for k, v in self.tracking["seen_posts"].items()
            if datetime.fromisoformat(v["first_seen"]) > cutoff
        }
        self.tracking["alerted_posts"] = {
            k: v for k, v in self.tracking["alerted_posts"].items()
            if datetime.fromisoformat(v["alerted_at"]) > cutoff
        }
        self.tracking["last_cleanup"] = datetime.now().isoformat()
        self._save_tracking()
        removed = before - len(self.tracking["seen_posts"])
        print(f"🧹 Cleanup: removed {removed} old entries")


# ── Scoring ───────────────────────────────────────────────────────────────────

def calculate_relevance_score(title, body):
    """
    Returns a score 0–10 based on keyword density.
    Must hit MIN_RELEVANCE_SCORE to trigger an alert.
    """
    combined = f"{title.lower()} {body.lower()}"
    score = 0
    score += sum(2 for kw in KEYWORDS_RELATIONSHIP_STRONG if kw in combined)
    score += sum(1 for kw in KEYWORDS_RELATIONSHIP_WEAK   if kw in combined)
    score += sum(3 for kw in KEYWORDS_TOXICITY_STRONG     if kw in combined)
    score += sum(1 for kw in KEYWORDS_TOXICITY_WEAK       if kw in combined)
    return min(score, 10)


def first_matched_keyword(title, body):
    """Return the first strong toxicity keyword found, for use in reply templates."""
    combined = f"{title.lower()} {body.lower()}"
    for kw in KEYWORDS_TOXICITY_STRONG:
        if kw in combined:
            return kw
    for kw in KEYWORDS_TOXICITY_WEAK:
        if kw in combined:
            return kw
    return "these patterns"


def meets_criteria(title, body):
    """Full filter: length + age is checked by caller, this checks content."""
    if len(body) < MIN_BODY_LENGTH:
        return False, 0
    score = calculate_relevance_score(title, body)
    return score >= MIN_RELEVANCE_SCORE, score


# ── Draft reply generator ─────────────────────────────────────────────────────

def generate_draft_reply(author, first_keyword):
    """Pick a random template and fill in the placeholders."""
    template = random.choice(REPLY_TEMPLATES)
    return template.format(
        author=author,
        first_keyword=first_keyword,
        android_link=ANDROID_LINK,
        ios_link=IOS_LINK,
    )


# ── Email alert ───────────────────────────────────────────────────────────────

def send_email_alert(title, url, body, author, subreddit, score, draft_reply):
    """Send formatted email alert with post details and pre-composed reply draft."""
    if not GMAIL_APP_PASSWORD:
        print("⚠️  GMAIL_APP_PASSWORD not set — skipping email, printing to terminal only.")
        return

    msg = MIMEMultipart()
    msg["From"]    = SENDER_EMAIL
    msg["To"]      = RECEIVER_EMAIL
    msg["Subject"] = f"🎯 AIRTA Reddit Match [{subreddit}] — Score {score}/10: {title[:50]}..."

    email_body = f"""
AIRTA REDDIT MONITOR — MATCH FOUND
====================================

Subreddit:       r/{subreddit}
Relevance Score: {score}/10
Author:          u/{author}
URL:             https://www.reddit.com{url}

POST CONTENT (first 1000 chars):
----------------------------------
{body[:1000]}...


PRE-COMPOSED REPLY DRAFT:
----------------------------------
{draft_reply}
----------------------------------

To log this reply after you post it, run:
  python main.py --log-reply {url.split('/')[-3]} <comment_id>

-- AIRTA Reddit Monitor v2.0
"""
    msg.attach(MIMEText(email_body, "plain"))

    try:
        server = smtplib.SMTP("smtp.gmail.com", 587)
        server.starttls()
        server.login(SENDER_EMAIL, GMAIL_APP_PASSWORD)
        server.sendmail(SENDER_EMAIL, RECEIVER_EMAIL, msg.as_string())
        server.quit()
        print(f"  ✉️  Email alert sent to {RECEIVER_EMAIL}")
    except Exception as e:
        print(f"  ❌ Email failed: {e}")


# ── Vote monitor ──────────────────────────────────────────────────────────────

def check_reply_votes(tracker):
    """
    Check current upvote scores on all your manually-logged replies.
    Prints a report and updates stored scores.
    """
    if not tracker.replied:
        print("  No logged replies to check yet.")
        return

    print("\n📊 Reply vote report:")
    print(f"  {'Subreddit':<25} {'Score':>6}  {'Change':>7}  Title")
    print(f"  {'-'*25} {'------':>6}  {'-------':>7}  -----")

    for post_id, data in tracker.replied.items():
        try:
            comment = reddit.comment(data["comment_id"])
            current = comment.score
            previous = data.get("score", 1)
            change = current - previous
            arrow = "📈" if change > 0 else ("📉" if change < 0 else "➡️ ")
            print(f"  {data['subreddit']:<25} {current:>6}  {change:>+7}  {data['title'][:45]}")
            tracker.replied[post_id]["score"]        = current
            tracker.replied[post_id]["last_checked"] = datetime.now().isoformat()
        except Exception as e:
            print(f"  ⚠️  Could not check comment {data.get('comment_id')}: {e}")

    tracker._save_replied()


# ── Main crawler loop ─────────────────────────────────────────────────────────

def run_crawler():
    tracker = PostTracker()

    print("=" * 60)
    print("  AIRTA Reddit Monitor v2.0")
    print(f"  Watching: {SUBREDDITS.replace('+', ', r/')}")
    print(f"  Min score: {MIN_RELEVANCE_SCORE}/10  |  Max alerts/day: {MAX_ALERTS_PER_DAY}")
    print(f"  Alerts → {RECEIVER_EMAIL}")
    print("=" * 60)

    # Run cleanup if it's been more than a day since last run
    last_cleanup = tracker.tracking.get("last_cleanup", "")
    if last_cleanup:
        hours_since = (datetime.now() - datetime.fromisoformat(last_cleanup)).total_seconds() / 3600
        if hours_since > 24:
            tracker.cleanup()

    target = reddit.subreddit(SUBREDDITS)
    posts_checked = 0
    alerts_sent   = 0

    for submission in target.stream.submissions(skip_existing=True):
        try:
            post_id   = submission.id
            title     = submission.title
            body      = submission.selftext
            author    = submission.author.name if submission.author else "[deleted]"
            subreddit = submission.subreddit.display_name
            permalink = submission.permalink

            posts_checked += 1

            # ── Skip already processed ──────────────────────────────────────
            if tracker.has_seen(post_id):
                continue
            tracker.mark_seen(post_id, title, subreddit)

            # ── Age filter ──────────────────────────────────────────────────
            age_hours = (time.time() - submission.created_utc) / 3600
            if age_hours > MAX_POST_AGE_HOURS:
                continue

            # ── Content filter ──────────────────────────────────────────────
            qualifies, score = meets_criteria(title, body)
            if not qualifies:
                continue

            # ── Rate limits ─────────────────────────────────────────────────
            if tracker.recent_alert_count() >= MAX_ALERTS_PER_DAY:
                print(f"  ⏸️  Daily alert limit ({MAX_ALERTS_PER_DAY}) reached — skipping until tomorrow.")
                continue

            if tracker.hours_since_last_alert_for(subreddit) < REPLY_COOLDOWN_HOURS:
                print(f"  ⏸️  Cooldown active for r/{subreddit} — skipping.")
                continue

            # ── Match found ─────────────────────────────────────────────────
            alerts_sent += 1
            print(f"\n{'='*60}")
            print(f"  🎯 MATCH #{alerts_sent}  |  Score: {score}/10  |  r/{subreddit}")
            print(f"  Title:  {title}")
            print(f"  Author: u/{author}")
            print(f"  URL:    https://www.reddit.com{permalink}")
            print(f"  Posts checked so far: {posts_checked}")

            first_kw    = first_matched_keyword(title, body)
            draft_reply = generate_draft_reply(author, first_kw)

            print(f"\n  --- DRAFT REPLY ---")
            print(draft_reply)
            print(f"  -------------------")

            # Send email alert
            send_email_alert(
                title, permalink, body, author, subreddit, score, draft_reply
            )

            # Mark as alerted
            tracker.mark_alerted(
                post_id, title,
                f"https://www.reddit.com{permalink}",
                score
            )

            # Periodically check reply votes (every 10 alerts)
            if alerts_sent % 10 == 0:
                check_reply_votes(tracker)

        except KeyboardInterrupt:
            print("\n\n  Bot stopped by user.")
            print(f"  Session summary: {posts_checked} posts checked, {alerts_sent} alerts sent.")
            check_reply_votes(tracker)
            break
        except Exception as e:
            print(f"  ⚠️  Error processing post: {e}")
            time.sleep(10)


# ── CLI helpers ───────────────────────────────────────────────────────────────

def log_reply_cli(post_id, comment_id):
    """
    Call from command line after you manually reply to a Reddit post.
    Stores the comment ID so the vote monitor can track it.

    Usage: python main.py --log-reply <post_id> <comment_id>
    """
    tracker = PostTracker()
    try:
        submission = reddit.submission(id=post_id)
        comment    = reddit.comment(id=comment_id)
        tracker.mark_replied(
            post_id,
            comment_id,
            submission.title,
            f"https://www.reddit.com{submission.permalink}",
            submission.subreddit.display_name,
        )
        print(f"✅ Reply logged: r/{submission.subreddit.display_name} — {submission.title[:50]}")
    except Exception as e:
        print(f"❌ Could not log reply: {e}")


def show_stats():
    """Print a summary of all tracked activity."""
    tracker = PostTracker()
    seen    = len(tracker.tracking["seen_posts"])
    alerted = len(tracker.tracking["alerted_posts"])
    replied = len(tracker.replied)
    today   = tracker.recent_alert_count(24)

    print(f"\n📈 AIRTA Reddit Monitor — Stats")
    print(f"   Posts seen (tracked):  {seen}")
    print(f"   Alerts sent (all time): {alerted}")
    print(f"   Alerts sent (today):    {today} / {MAX_ALERTS_PER_DAY}")
    print(f"   Replies logged:         {replied}")

    if tracker.replied:
        print(f"\n   Recent replies:")
        for data in list(tracker.replied.values())[-5:]:
            print(f"     [{data['score']:>4} pts] r/{data['subreddit']} — {data['title'][:45]}")


# ── Entry point ───────────────────────────────────────────────────────────────

if __name__ == "__main__":
    import sys

    if len(sys.argv) >= 4 and sys.argv[1] == "--log-reply":
        log_reply_cli(sys.argv[2], sys.argv[3])
    elif len(sys.argv) >= 2 and sys.argv[1] == "--stats":
        show_stats()
    elif len(sys.argv) >= 2 and sys.argv[1] == "--check-votes":
        tracker = PostTracker()
        check_reply_votes(tracker)
    else:
        run_crawler()
