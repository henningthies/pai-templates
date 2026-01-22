# /pai:process - Process Inbox

## Purpose

Go through inbox items and decide: today, tomorrow, park, or delete.
Based on the CORE workflow (Capture, Organize, Review, Engage).

## Input

```
/process
```

## Before You Respond

1. **Read all files in inbox/** (except .gitkeep)
2. **Sort by date** (oldest first)
3. **For each item:** Read the content

## Output Format

```
PROCESS INBOX

[For each item:]
---
[Title from file]
Captured: [Date from filename]

> [Content/idea from the file]

What to do?
1. -> today (task for today)
2. -> tomorrow (task for tomorrow)
3. -> park (revisit later)
4. -> delete
---
```

## After Each Decision

| Choice | Action |
|--------|--------|
| **today** | Add `- [ ] [content]` to daily/[YYYY]-W[XX]/[today].md, delete inbox file |
| **tomorrow** | Add `- [ ] [content]` to daily/[YYYY]-W[XX]/[tomorrow].md, delete inbox file |
| **park** | Keep file in inbox/, move to next |
| **delete** | Delete the inbox file |

## Completion

```
Inbox processed

Result:
- [X] -> today
- [X] -> tomorrow
- [X] parked
- [X] deleted

[If items added to today:]
Your daily has been updated. Good luck!
```

## Behavior Rules

ALWAYS:
- Show the full content of the item
- Wait for user decision per item
- Update daily files immediately
- Delete processed files (except park)

NEVER:
- Decide yourself what happens to items
- Skip items without asking
- Keep completed items in the inbox
