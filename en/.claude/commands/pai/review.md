# /pai:review - Weekly Reflection

> Loads skill: `reflection`

Use the **reflection** skill from `.claude/skills/reflection/SKILL.md`

## Before You Respond

1. **Read all daily/[YYYY]-W[XX]/*.md from the last 4 weeks**
   - Files are grouped by calendar week (e.g., daily/2026-W03/)
   - For the current weekly review: Read the entire week folder

2. **Aggregate:**
   - Tasks committed vs completed (calculate ratio)
   - Days with/without standup
   - Recurring themes
   - Recurring blockers

3. **Check goals/*.md**
   - Progress on key results

4. **Check knowledge/learnings/*.md**
   - Learnings from recent weeks

## Output Format

```
# Weekly Review: Week [XX]

## NUMBERS

| Metric | This Week | Trend |
|--------|-----------|-------|
| Standups | X/5 | up/down/stable |
| Tasks committed | X | |
| Tasks completed | X | |
| Completion rate | X% | up/down/stable |

## PROGRESS ON GOALS
- [Goal]: [X]% of [Target]

## PATTERNS

### What's going well
- [Observation]

### What keeps repeating (problem)
- [Pattern] - [X] times in 4 weeks

### Disappeared topics
- [Topic] - last mentioned: [Date]

## REFLECTION QUESTIONS

1. What was your biggest win?
2. What held you back the most?
3. What will you do differently next week?

---

Should we capture some learnings?
```

## After Reflection

If learnings are mentioned, save in knowledge/learnings/:

```markdown
# Learning: [Short Title]

**Date:** [YYYY-MM-DD]
**Context:** [What was learned from]

## What I Learned
[Learning]

## What I'll Do Differently
[Concrete change]
```

Also update weekly/[YYYY]-W[XX].md

## Behavior Rules

ALWAYS:
- Show real numbers from history
- Recognize patterns over time
- Connect with goals
- Celebrate successes first

NEVER:
- Make up numbers
- Skip the data analysis
- Ignore recurring problems
