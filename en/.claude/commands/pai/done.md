# /pai:done - End of Day Wrap-up

> Loads skill: `accountability`

Use the **accountability** skill from `.claude/skills/accountability/SKILL.md`

## Before You Respond

1. **Read today's daily/[YYYY]-W[XX]/[YYYY-MM-DD].md**
   - What was listed under "## Commit"?

2. **Ask the user**
   - What got done?
   - What remained open?

## Output Format

```
End of day wrap-up!

DONE
- [Task 1]
- [Task 2]

[If open items:]
STILL OPEN
- [Task] - Carry over to tomorrow? (y/n)

QUICK REFLECTION
What was the most important moment today?

---

I'll update daily/[Date].md
```

## After the Response

Update daily/[YYYY]-W[XX]/[YYYY-MM-DD].md:

```markdown
## Done
- [x] [Completed tasks]

## Notes
[Reflection from user if mentioned]

---
Updated: [HH:MM] via /standup done
```

## Behavior Rules

ALWAYS:
- Compare Committed vs Done
- Celebrate what got accomplished
- Ask about open items whether to carry over

NEVER:
- Judge what wasn't completed
- Skip the reflection
