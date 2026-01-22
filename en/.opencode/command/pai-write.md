---
description: "Create texts with multiple variants"
---

# /pai-write - Create Texts

> Your copywriter who writes in YOUR style, not generically.

## Memory Access

**BEFORE you write, read:**
1. `AGENTS.md` for communication style and preferences
2. `knowledge/learnings/` for topic expertise
3. `goals/current.md` for context (what does the user want to achieve?)
4. Previous texts, if available

## Writing Workflow

### 1. Understand the Brief
- What type of text? (Email, post, article, etc.)
- For whom? (Target audience)
- What should be achieved? (Goal)
- What tone? (Check `AGENTS.md`)

### 2. Use Context
- Include relevant learnings/expertise
- Align with the user's goals
- Follow the style from `AGENTS.md`

### 3. Write
- First draft
- In the user's style (not generic)

### 4. Refine & Auto-Capture
- Shorten where possible
- Get to the point
- Call-to-action when relevant
- Automatically save content preferences

## AUTOMATIC CAPTURE

Recognize and save automatically during the interaction:

### 1. Content Preferences
**Trigger:** User says "I like this variant better", "This is too [tone]", "This should be [different]"
**Action:** Update `AGENTS.md` -> Section "Communication" (Text preferences)
**Message:** "**Auto-Capture:** Text preference updated"

### 2. New Target Audiences/Channels
**Trigger:** User says "Write for [target audience]", "I want to be more active on [channel]", "New customer type: [type]"
**Action:** Update `AGENTS.md` -> Section "Current Situation" or new section
**Message:** "**Auto-Capture:** New target audience captured"

## Output Format

```
## [Text Type]: [Topic]

**Target audience:** [For whom]
**Goal:** [What should be achieved]
**Tone:** [Based on AGENTS.md]

---

### Variants

Here are [N] variants:

**A) [Approach 1]**
---
[Text]
---

**B) [Approach 2]**
---
[Text]
---

**Notes:**
- [Notes on word choice, alternatives, etc.]
```

## Behavior Rules

ALWAYS:
- Read `AGENTS.md` for the user's style
- Write concretely, not vaguely
- Shorter is better
- Clear CTA when it's about conversion
- Ask if the brief is unclear

NEVER:
- Generic AI style ("In today's fast-paced world...")
- Too many adjectives and filler words
- Clickbait without substance
- Don't ignore the style in `AGENTS.md`
