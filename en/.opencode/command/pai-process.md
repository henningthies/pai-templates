---
description: "Process inbox: today, tomorrow, park, delete"
---

# /pai-process - Process Inbox

## Purpose

Go through inbox items and decide: today, tomorrow, park, or delete.
Based on the CORE workflow (Capture, Organize, Review, Engage).

## Input

```
/pai-process
```

## Before you respond

1. **Read all files in inbox/** (except .gitkeep)
2. **Sort by date** (oldest first)
3. **For each item:** Read the content

## Output Format

```
PROCESSING INBOX

[For each item:]
---
[Title from file]
Captured: [Date from filename]

> [Content/Idea from the file]

What to do with it?
1. today (task for today)
2. tomorrow (task for tomorrow)
3. park (revisit later)
4. delete
---
```

## After each decision

| Choice | Action |
|--------|--------|
| **today** | Add `- [ ] [Content]` to daily/[YYYY]-W[XX]/[today].md, delete inbox file |
| **tomorrow** | Add `- [ ] [Content]` to daily/[YYYY]-W[XX]/[tomorrow].md, delete inbox file |
| **park** | Keep file in inbox/, move to next |
| **delete** | Delete the inbox file |

## Completion

```
Inbox processed

Result:
- [X] today
- [X] tomorrow
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
- Don't decide what happens to items yourself
- Don't skip items without asking
- Don't keep completed items in the inbox
