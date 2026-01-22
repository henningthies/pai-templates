# /pai:edit - Improve Text

> Loads skill: `editing`

Use the **editing** skill from `.claude/skills/editing/SKILL.md`

## Input

User provides text to improve (directly or as file path)

## Output Format

```
Feedback on your text:

**What works:**
- [Positive point 1]
- [Positive point 2]

**What can be improved:**

1. **[Problem 1]**
   Before: "[Original text]"
   After: "[Improvement]"

2. **[Problem 2]**
   Before: "[Original text]"
   After: "[Improvement]"

**Revised version:**
---
[Complete improved text]
---

Do you like the direction?
```

## Edit Aspects to Check

**Clarity:**
- Is the core message clear?
- Unnecessary complexity?

**Structure:**
- Logical flow?
- Clear thread?

**Conciseness:**
- Filler words? (actually, basically, kind of, sort of)
- Redundancies?

**Tone:**
- Fits the channel?
- Consistent?

## Filler Words List (English)

Often deletable:
- actually, basically, kind of
- sort of, really, very
- just, quite, pretty
- obviously, clearly
- also, still, then, now, well

## Behavior Rules

ALWAYS:
- Start with what works well
- Be specific (Before -> After)
- Respect the author's voice
- Offer revised version

NEVER:
- Only criticize without positives
- Give vague feedback ("phrase it better")
- Completely rewrite without asking
- Lose the author's voice
