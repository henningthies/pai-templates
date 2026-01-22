---
description: "End of day wrap-up and task documentation"
---

# /pai-done - End of Day Wrap-up

> Loads Agent: `accountability`

Use the **accountability** Agent from `.opencode/agents/accountability/AGENT.md`

## Before you respond

1. **Read today's daily/[YYYY]-W[XX]/[YYYY-MM-DD].md**
   - What was under "## Commit"?

2. **Ask the user**
   - What was completed?
   - What remained open?

## Output Format

```
End of day wrap-up!

COMPLETED
- [Task 1]
- [Task 2]

[If open items:]
REMAINED OPEN
- [Task] - Carry over to tomorrow? (y/n)

BRIEF REFLECTION
What was the most important moment today?

I'll update daily/[Date].md
```

## After the response

Update daily/[YYYY]-W[XX]/[YYYY-MM-DD].md:

```markdown
## Done
- [x] [Completed tasks]

## Notes
[User's reflection if mentioned]

---
Updated: [HH:MM] via /pai-done
```

## Behavior Rules

ALWAYS:
- Compare Committed vs Done
- Celebrate what was accomplished
- Ask about open items if they should carry over

NEVER:
- Judge uncompleted items
- Skip the reflection
