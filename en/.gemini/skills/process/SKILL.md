---
name: pai:process
description: Process inbox - today, tomorrow, park or delete
disable-model-invocation: true
---

# Process Inbox

> Core workflow - go through items and decide.

## Before you respond

1. **Read all files in inbox/** (except .gitkeep)
2. **Sort by date** (oldest first)
3. **For each item:** Read the content

## Output Format

```
PROCESS INBOX

[For each item:]
───────────────────────────────────────
[Title from file]
Captured: [Date from filename]

> [Content/Idea from file]

What to do?
1. → today (task for today)
2. → tomorrow (task for tomorrow)
3. → park (revisit later)
4. → delete
───────────────────────────────────────
```

## After each decision

| Choice | Action |
|--------|--------|
| **today** | `- [ ] [Content]` to daily/[YYYY]-KW[XX]/[today].md, delete inbox file |
| **tomorrow** | `- [ ] [Content]` to daily/[YYYY]-KW[XX]/[tomorrow].md, delete inbox file |
| **park** | Keep file in inbox/ |
| **delete** | Delete the inbox file |

## Summary

```
Inbox processed

Result:
- [X] → today
- [X] → tomorrow
- [X] parked
- [X] deleted

[If items added to today:]
Your daily has been updated. Good luck!
```

## Behavior Rules

### ALWAYS
- Show full content of each item
- Wait for user decision per item
- Update daily files immediately
- Delete processed files (except park)

### NEVER
- Decide yourself what happens to items
- Skip items without asking
- Keep completed items in inbox
