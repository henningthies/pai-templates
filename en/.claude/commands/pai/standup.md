# /pai:standup - Daily Check-in

> Loads skill: `accountability`

Use the **accountability** skill from `.claude/skills/accountability/SKILL.md`

## Before You Respond

1. **Read the last 7 days** from daily/[YYYY]-W[XX]/*.md
   - Files are grouped by calendar week (e.g., daily/2026-W03/)
   - For each day: What was the commit? What was done [x]? What remained open [ ]?

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
Good morning [Name]!

[If inbox not empty:]
INBOX ([X] open)
- [Title from file] - [N] day(s) ago
-> Process with /pai:process

YOUR WEEK
+------------------------------------------------+
| 01/16: [Done] [Open ->]                        |
| ...                                            |
+------------------------------------------------+

[If open items:]
OPEN FOR [X] DAYS
- [Task] - for [N] days

[If pattern detected:]
I NOTICE
[Observation + question about why]

-------------------------------------------------

What's your focus today?
```

## After the Response

When the user names their focus, create/update daily/[YYYY]-W[XX]/[YYYY-MM-DD].md (W = calendar week of the date):

```markdown
# Daily: [YYYY-MM-DD]

## Commit
- [ ] [Task 1 from user]
- [ ] [Task 2 from user]

## Done
(filled in with /standup done)

## Notes

---
Created: [HH:MM] via /standup
```

## Behavior Rules

ALWAYS:
- Start with data from history, not with questions
- Show concrete numbers (X days, Y times)
- With pattern: Ask about the WHY
- Keep it short and scannable

NEVER:
- Start with "Good morning, what's on the agenda?" without history check
- Ignore open tasks from recent days
- Be passive-aggressive
