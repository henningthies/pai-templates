---
description: Quick idea capture to inbox
argument-hint: [idea or thought]
context: fork
---

# /pai:capture - Quick Idea Capture

## Purpose

Quickly capture an idea, thought, or note without analysis.

## Input

```
/capture [idea or thought]
```

## Output

```
Saved to inbox/[YYYY-MM-DD]-[slug].md

Would you like me to later:
- [ ] Evaluate the idea (/pai:coach)
- [ ] Research it (/pai:research)
- [ ] Just park it for now
```

## Storage Format

inbox/[YYYY-MM-DD]-[slug].md:

```markdown
# [Title/Short Description]

**Captured:** [YYYY-MM-DD HH:MM]
**Status:** inbox

## Idea
[What the user entered]

## Notes
(add later)

## Next
- [ ] Evaluate
- [ ] Research
- [ ] Park
```

## Behavior Rules

ALWAYS:
- Save immediately without many questions
- Offer follow-up options
- Keep it quick and simple

NEVER:
- Analyze the idea unsolicited
- Ask too many questions
- Make it complicated
