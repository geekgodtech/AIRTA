# Metric Duplicates Analysis - 500 Metrics Review

## Summary
- **Total metrics analyzed:** 400 (Good: 100, Bad: 100, Ugly: 100, Narcissist: 50, Serial Killer: 50)
- **Exact duplicates found:** 10 metric names appearing multiple times
- **Total unique duplicates:** 10 names appearing in 15 positions

---

## Duplicate #1: Emotional Blackmail
**Locations:**
- BAD pack (line 133): "Flags threats of self-harm, abandonment, or withdrawal of love to control behavior or prevent discussion."
- NARCISSIST pack (line 413): "Using fear, obligation, or guilt to manipulate decisions and behavior."

**Analysis:** BAD pack description focuses on specific threats (self-harm, abandonment), while NARCISSIST is broader. The BAD version is more specific and severe.

**Recommendation:** Replace NARCISSIST version with: **"Fear-Based Compliance"**
- Description: "Detects use of fear, obligation, or duty to secure compliance without genuine agreement."

---

## Duplicate #2: Selective Memory
**Locations:**
- BAD pack (line 137): "Tracks convenient forgetting of promises, agreements, or past harmful behavior to avoid accountability."
- NARCISSIST pack (line 401): "Conveniently forgetting promises, agreements, or harmful actions to avoid responsibility."

**Analysis:** Nearly identical descriptions. BAD version is more relationship-focused.

**Recommendation:** Replace NARCISSIST version with: **"Convenient Amnesia"**
- Description: "Identifies strategic forgetting of commitments or transgressions when confronted."

---

## Duplicate #3: Boundary Testing (APPEARS 3 TIMES!)
**Locations:**
- BAD pack (line 139): "Detects repeated probing or pushing of stated limits to determine if they will be enforced."
- NARCISSIST pack (line 408): "Repeatedly pushing limits to see what behavior is tolerated, then escalating violations."
- SERIAL_KILLER pack (line 456): "Recognizes probing for limits or resistance in potential victims."

**Analysis:** Each pack has progressively darker context - BAD is relationship boundary testing, NARCISSIST is escalating violations, SERIAL_KILLER is predatory probing.

**Recommendations:**
1. **Keep BAD version** as "Boundary Testing" (baseline relationship context)
2. **Replace NARCISSIST** with: **"Limit Pushing Pattern"**
   - Description: "Identifies systematic escalation after initial small boundary violations are tolerated."
3. **Replace SERIAL_KILLER** with: **"Resistance Probing"**
   - Description: "Detects testing of victim vulnerability and resistance thresholds before exploitation."

---

## Duplicate #4: Emotional Unavailability (APPEARS 2x IN BAD PACK!)
**Locations:**
- BAD pack (line 150): "Detects consistent refusal to engage emotionally, share feelings, or provide comfort."
- BAD pack (line 230): "Flags chronic withdrawal from emotional intimacy, vulnerability, or meaningful connection when the partner needs closeness."

**Analysis:** Line 150 is general emotional withholding; line 230 is specifically during times of partner need.

**Recommendation:** Replace line 230 with: **"Intimacy Withdrawal"**
- Description: "Identifies deliberate withdrawal of closeness specifically during partner's times of emotional need."

---

## Duplicate #5: Contemptuous Tone
**Locations:**
- BAD pack (line 190): "Identifies dismissive attitude or disdain conveyed through text patterns and word choice."
- NARCISSIST pack (line 415): "Using sarcasm, mockery, or disdainful language to degrade and dismiss others."

**Analysis:** BAD focuses on dismissive patterns; NARCISSIST includes active mockery/sarcasm.

**Recommendation:** Replace NARCISSIST version with: **"Derisive Communication"**
- Description: "Detects use of mockery, sarcasm, and ridicule to undermine the target's self-worth."

---

## Duplicate #6: Empathy Deficit
**Locations:**
- NARCISSIST pack (line 369): "Inability or unwillingness to recognize or validate others' feelings, dismissing emotional needs as irrelevant."
- SERIAL_KILLER pack (line 432): "Identifies statements lacking emotional resonance or concern for others' suffering, suggesting callousness."

**Analysis:** NARCISSIST version is about dismissing feelings; SERIAL_KILLER is clinical coldness.

**Recommendation:** Replace SERIAL_KILLER version with: **"Callous Indifference"**
- Description: "Detects clinical detachment when discussing or causing suffering in others."

---

## Duplicate #7: Superiority Claims
**Locations:**
- NARCISSIST pack (line 382): "Asserting inherent superiority over others, often with condescending or dismissive language."
- SERIAL_KILLER pack (line 468): "Recognizes assertions of being above moral or legal constraints."

**Analysis:** NARCISSIST is about social superiority; SERIAL_KILLER is about being above laws/morals.

**Recommendation:** Replace SERIAL_KILLER version with: **"Above-the-Law Mentality"**
- Description: "Identifies belief that moral and legal constraints do not apply to the speaker."

---

## Duplicate #8: Lack of Remorse
**Locations:**
- NARCISSIST pack (line 386): "Absence of guilt or apology after causing harm, often justifying actions as deserved by the target."
- SERIAL_KILLER pack (line 445): "Flags absence of guilt or regret after discussing harmful actions."

**Analysis:** NARCISSIST justifies harm; SERIAL_KILLER is simply absence of guilt.

**Recommendation:** Replace SERIAL_KILLER version with: **"Guilt Absence"**
- Description: "Detects complete lack of regret or moral discomfort when recounting harmful acts."

---

## Duplicate #9: Isolation Tactics
**Locations:**
- NARCISSIST pack (line 405): "Discouraging or preventing contact with friends, family, or support systems to increase dependence."
- SERIAL_KILLER pack (line 448): "Recognizes efforts to separate a target from support networks."

**Analysis:** NARCISSIST focuses on discouragement; SERIAL_KILLER is active separation.

**Recommendation:** Replace SERIAL_KILLER version with: **"Target Separation"**
- Description: "Identifies deliberate removal of victim from protective relationships and support systems."

---

## Duplicate #10: Blame Externalization
**Locations:**
- NARCISSIST pack (line 411): "Attributing all problems and conflicts to others, never accepting personal fault."
- SERIAL_KILLER pack (line 446): "Detects shifting responsibility for violent urges onto victims or society."

**Analysis:** NARCISSIST is general blame-shifting; SERIAL_KILLER specifically blames victims/society for violence.

**Recommendation:** Replace SERIAL_KILLER version with: **"Victim Blaming for Violence"**
- Description: "Identifies rationalization of violent impulses by blaming victims, circumstances, or societal factors."

---

## Summary of Changes Made

| Duplicate | Pack Kept | Pack Changed | Old Name | New Name | Line Changed |
|-----------|-----------|--------------|----------|----------|--------------|
| Emotional Blackmail | BAD | NARCISSIST | Emotional Blackmail | **Fear-Based Compliance** | 413 |
| Selective Memory | BAD | NARCISSIST | Selective Memory | **Convenient Amnesia** | 401 |
| Boundary Testing (1) | BAD | NARCISSIST | Boundary Testing | **Limit Pushing Pattern** | 408 |
| Boundary Testing (2) | BAD | SERIAL_KILLER | Boundary Testing | **Resistance Probing** | 456 |
| Emotional Unavailability | Line 150 | Line 230 | Emotional Unavailability | **Intimacy Withdrawal** | 230 |
| Contemptuous Tone | BAD | NARCISSIST | Contemptuous Tone | **Derisive Communication** | 415 |
| Empathy Deficit | NARCISSIST | SERIAL_KILLER | Empathy Deficit | **Callous Indifference** | 432 |
| Superiority Claims | NARCISSIST | SERIAL_KILLER | Superiority Claims | **Above-the-Law Mentality** | 468 |
| Lack of Remorse | NARCISSIST | SERIAL_KILLER | Lack of Remorse | **Guilt Absence** | 445 |
| Isolation Tactics | NARCISSIST | SERIAL_KILLER | Isolation Tactics | **Target Separation** | 448 |
| Blame Externalization | NARCISSIST | SERIAL_KILLER | Blame Externalization | **Victim Blaming for Violence** | 446 |
| Victim Blaming | SERIAL_KILLER (446) | SERIAL_KILLER (462) | Victim Blaming | **Fault Attribution to Target** | 462 |

**Total changes:** 12 replacements across 3 packs

---

## Verification

```
[OK] No exact duplicates found!
```

All 400 metrics now have unique names.

---

## Note on Pack Sizes

Current metric distribution:
- Good Pack: 100 metrics
- Bad Pack: 100 metrics
- Ugly Pack: 100 metrics
- Narcissist Pack: 50 metrics
- Serial Killer Pack: 50 metrics

**Total: 400 metrics**

To reach 500 metrics, Narcissist and Serial Killer packs need 50 additional metrics each.
