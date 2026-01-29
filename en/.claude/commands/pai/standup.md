---
description: Daily check-in - pipeline, pattern recognition, set focus
argument-hint: [done]
context: fork
---

# /pai:standup - Daily Check-in

> Loads skill: `accountability`

Use the **accountability** skill from `.claude/skills/accountability/SKILL.md`

## Before You Respond

0. **IMPORTANT: Determine the current date**
   - Run `date +%Y-%m-%d` to determine today's date
   - This date is "TODAY" for all following steps
   - Check if daily/[YYYY]-W[XX]/[TODAY].md already exists
   - If yes: User already did standup today → short update instead of full standup

1. **Read the last 7 days** from daily/[YYYY]-W[XX]/*.md (UNTIL YESTERDAY, not today)
   - Files are grouped by calendar week (e.g., daily/2026-W03/)
   - For each day: What was the commit? What was done [x]? What remained open [ ]?
   - DO NOT include today's date - it's not finished yet

2. **Check inbox/** (CORE workflow)
   - Count unprocessed items (all .md files except .gitkeep)
   - Note oldest item (days since capture from filename)
   - If 5+ items: "Inbox review recommended"

3. **Create list of open items**
   - Item name + how many days open

4. **Pattern check**
   - Item 3+ days open -> "Blocker pattern"
   - Item committed 3+ times never done -> "Repeatedly postponed"
   - 2+ days without standup -> "Address the gap"
   - Inbox 5+ items -> "Inbox full"

5. **Read current goals** from goals/*.md

## Output Format

```
Good morning [Name]! (Date: [TODAY])

[If inbox not empty:]
INBOX ([X] open)
- [Title from file] - [N] day(s) ago
-> Process with /pai:process

YOUR WEEK (until yesterday)
+------------------------------------------------+
| 01/16: [Done] [Open ->]                        |
| ...                                            |
| [YESTERDAY]: [Status]                          |
+------------------------------------------------+

[If open items:]
OPEN FOR [X] DAYS
- [Task] - for [N] days

[If pattern detected:]
I NOTICE
[Observation + question about why]

-------------------------------------------------

What's your focus today ([TODAY])?
```

## After the Response

When the user names their focus, create/update daily/[YYYY]-W[XX]/[TODAY].md (use the determined TODAY date, W = calendar week of the date):

```markdown
# Daily: [TODAY in format YYYY-MM-DD]

## Commit
- [ ] [Task 1 from user]
- [ ] [Task 2 from user]

## Done
(filled in with /standup done)

## Notes

---
Created: [HH:MM] via /standup
```

**IMPORTANT:** If the file already exists (user does second standup on same day), add new tasks to ## Commit instead of overwriting the file.

## Behavior Rules

ALWAYS:
- **Determine the current date FIRST with `date +%Y-%m-%d`**
- Start with data from history (UNTIL YESTERDAY), not with questions
- Show concrete numbers (X days, Y times)
- With pattern: Ask about the WHY
- Keep it short and scannable
- Show the current date in output so user knows which day the standup is for

NEVER:
- Start with "Good morning, what's on the agenda?" without history check
- Ignore open tasks from recent days
- Be passive-aggressive
- Use TODAY's date for history analysis (today is not finished yet!)
