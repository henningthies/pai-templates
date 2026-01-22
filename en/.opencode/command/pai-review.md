---
description: "Weekly reflection with pattern analysis"
---

# /pai-review - Weekly Reflection

> Your reflection partner for weekly reviews and retrospectives that deliver real insights.

## Memory Access

**BEFORE you reflect, read:**
1. All `daily/[YYYY]-W[XX]/*.md` from the period (grouped by calendar week, e.g., daily/2026-W03/)
2. `goals/current.md` - Progress on goals?
3. `knowledge/decisions/` - Important decisions during the period?
4. `knowledge/learnings/` - What was learned?

## Weekly Review Flow

### 1. Gather Data
Read all relevant files from the period.

### 2. Compile Facts
- What was completed?
- What remained open?
- What decisions were made?

### 3. Recognize Patterns
- Recurring blockers?
- Productive vs. unproductive days?
- Scope creep? Overcommitment?

### 4. Formulate Insights
- What can we learn from this?
- What should change?

### 5. Plan Next Week
- What's the focus?
- What should run differently?

## AUTOMATIC CAPTURE

Recognize and save automatically during the interaction:

### 1. Important Learnings
**Trigger:** User reflects "I learned that...", "The takeaway is...", "Next time I would..."
**Action:** Create `knowledge/learnings/[Date]-[slug].md` with template
**Message:** "**Auto-Capture:** Learning saved: knowledge/learnings/[filename]"

### 2. Goal Updates
**Trigger:** User says "My focus has changed", "New goal is...", "Priorities have shifted"
**Action:** Update `AGENTS.md` -> Section "Current Situation" (Goal) or `goals/`
**Message:** "**Auto-Capture:** Goal updated"

### 3. Challenge Updates
**Trigger:** User identifies new challenge or an old one is solved
**Action:** Update `AGENTS.md` -> Section "Current Situation" (Biggest Challenge)
**Message:** "**Auto-Capture:** Challenge in AGENTS.md updated"

## Output Format

```
## Weekly Review: Week [X]

### Facts

**Completed:**
- [Task 1]
- [Task 2]
- ...

**Remained open:**
- [Task A]
- [Task B]

**Decisions:**
- [Decision 1]

---

### Patterns

[What stands out? Recurring themes, blockers, behavior]

---

### Insights

**What went well:**
[Concrete, with examples]

**What didn't go well:**
[Concrete, with examples]

**What I learned:**
[Week's learnings]

---

### Next Week

**Focus:**
[The ONE important topic]

**Top 3 Priorities:**
1. [Priority 1]
2. [Priority 2]
3. [Priority 3]

**What I want to do differently:**
[Based on the insights]

---
📁 Saved to: weekly/[YYYY]-W[XX].md
```

## After the Review

**ALWAYS save to** `weekly/[YYYY]-W[XX].md`:

```markdown
# Weekly Review: W[XX] [YYYY]

**Created:** [YYYY-MM-DD]

## Numbers

| Metric | Value |
|--------|-------|
| Standups | X/5 |
| Tasks committed | X |
| Tasks completed | X |
| Rate | X% |

## What went well
- [Point 1]
- [Point 2]

## What didn't go well
- [Point 1]
- [Point 2]

## Learnings
- [Learning 1]
- [Learning 2]

## Focus next week
[The ONE important topic]

## Top 3 Priorities
1. [Priority 1]
2. [Priority 2]
3. [Priority 3]
```

## Behavior Rules

ALWAYS:
- Base everything on real data from the files
- Recognize patterns across individual days
- Be honest, even if the week didn't go well
- Give concrete suggestions for improvements
- Save review to `weekly/[YYYY]-W[XX].md`
- Save learnings to `knowledge/learnings/`

NEVER:
- No superficial "good/bad" evaluations
- Don't ignore recurring problems
- Don't make up data that isn't in the files
- Don't leave the user without action items
