---
description: "Quick idea capture without analysis"
---

# /pai-capture - Quick Idea Capture

## Purpose

Quickly capture an idea, thought, or note without analysis.

## Input

```
/pai-capture [Idea or thought]
```

## Output

```
Saved to inbox/[YYYY-MM-DD]-[slug].md

Should I later:
- [ ] Evaluate the idea (/pai-coach)
- [ ] Research it (/pai-research)
- [ ] Just park it for now
```

## Storage Format

inbox/[YYYY-MM-DD]-[slug].md:

```markdown
# [Title/Brief description]

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
- Analyze the idea without being asked
- Ask many follow-up questions
- Make it complicated
