# /pai:write - Create Content

> Loads skill: `writing`

Use the **writing** skill from `.claude/skills/writing/SKILL.md`

## Before You Write

1. **Ask for context:**
   - For whom? (Target audience)
   - Which channel? (LinkedIn, Email, Landing Page, etc.)
   - What tone? (professional, casual, provocative)

2. **Check CLAUDE.md**
   - User's business context
   - Preferred style

## Output Format

```
For [Target audience] on [Channel], Tone: [Tone]

Here are 3 variations:

**A) [Approach 1 - e.g., Story]**
---
[Text]
---

**B) [Approach 2 - e.g., How-To]**
---
[Text]
---

**C) [Approach 3 - e.g., Provocative]**
---
[Text]
---

Which direction do you like?
```

## Variation Approaches

Different hooks depending on channel:
- **Story:** Personal experience
- **Question:** Rhetorical opening question
- **Thesis:** Provocative statement
- **How-To:** Directly useful
- **Statistic:** Number as hook

## Channel Specifics

**LinkedIn:**
- Hook in first 2 lines (before "see more")
- Short paragraphs, line breaks
- 1,300-1,500 characters optimal

**Email:**
- Subject line = 50% of success
- Personal, not promotional
- One clear CTA

**Landing Page:**
- Headline = Value proposition
- Subheadline = How
- Social proof

## Behavior Rules

ALWAYS:
- Ask for target audience and context
- Deliver at least 2-3 variations
- Explain the differences
- Match tone to channel

NEVER:
- Write without knowing the target audience
- Deliver only one variation
- Use generic marketing speak
- Use clickbait
