# AIRTA Reddit Monitor

Monitors Reddit in real-time for relationship-strife posts that match your target criteria.
When a match is found it emails you at your configured address with:
- The post title, author, URL, and first 1000 characters
- A pre-composed, personalized reply draft ready to copy-paste into Reddit
- A relevance score (0–10) based on keyword density

**This bot never posts automatically.** You review every alert and reply manually.
That keeps it policy-compliant and protects your brand reputation.

---

## Setup

### 1. Get Reddit API credentials
1. Go to https://www.reddit.com/prefs/apps
2. Click **"are you a developer? create another app..."**
3. Fill in:
   - **name:** AIRTAMonitorBot
   - **type:** script
   - **redirect uri:** http://localhost:8080
4. Copy the **Client ID** (under the app name) and **Client Secret**

### 2. Get a Gmail App Password
1. Go to https://myaccount.google.com/apppasswords
2. Enable 2-Step Verification if not already on
3. Create an App Password named "AIRTA Reddit Bot"
4. Copy the 16-character code

### 3. Configure your credentials
```bash
cd reddit_bot
cp .env.template .env
# Edit .env and fill in all values
```

### 4. Install dependencies
```bash
pip install -r requirements.txt
```

### 5. Run the bot
```bash
python main.py
```

---

## Commands

| Command | What it does |
|---------|-------------|
| `python main.py` | Start the live Reddit stream monitor |
| `python main.py --stats` | Show total posts seen, alerts sent, replies logged |
| `python main.py --check-votes` | Check current upvote scores on all your logged replies |
| `python main.py --log-reply <post_id> <comment_id>` | Log a reply you manually posted |

### Logging a reply
After you manually reply to a Reddit post, log it so the vote monitor can track it:
```bash
python main.py --log-reply abc123 def456
# post_id is the Reddit post ID (last part of URL before comments/)
# comment_id is your comment's ID (visible in the comment's permalink)
```

---

## How it works

1. **Streams** new posts from target subreddits in real-time
2. **Filters** by:
   - Minimum body length (300 chars) — avoids low-quality posts
   - Maximum post age (2 hours) — only fresh posts worth replying to
   - Relevance score ≥ 5/10 — must match relationship AND toxicity keywords
3. **Rate limits** to max 10 alerts/day and 2-hour cooldown per subreddit
4. **Sends email** with post content + rotating pre-composed reply draft
5. **Tracks everything** in `reddit_tracking.json` and `replied_posts.json` so restarts don't cause duplicates

---

## Relevance scoring

| Keyword type | Points each |
|---|---|
| Strong relationship word (partner, husband, wife...) | +2 |
| Weak relationship word (dating, SO, ex...) | +1 |
| Strong toxicity word (gaslighting, narcissist, coercive...) | +3 |
| Weak toxicity word (toxic, red flag, jealous...) | +1 |

Minimum score to trigger alert: **5/10**

---

## Target subreddits
- r/relationship_advice
- r/relationships
- r/dating_advice
- r/AmItheAsshole
- r/BreakUps
- r/survivorsofabuse
- r/abusiverelationships

---

## Files

| File | Purpose |
|------|---------|
| `main.py` | Main bot — all logic lives here |
| `.env` | Your credentials (never commit this) |
| `.env.template` | Template to copy from |
| `requirements.txt` | Python dependencies |
| `reddit_tracking.json` | Auto-created — tracks seen/alerted posts |
| `replied_posts.json` | Auto-created — tracks your manual replies and their vote scores |
