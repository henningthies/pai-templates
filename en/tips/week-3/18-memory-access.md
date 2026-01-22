# Tip 18: Understanding Memory Access

**Category:** Power User

## How Personal AI "Remembers"

Personal AI doesn't have real memory. What Personal AI has: **Access to files.**

When a command says "Read the last 7 daily notes", Personal AI does that - and thus has "memories" of the past week.

## The Memory Hierarchy

```
Always read:      CLAUDE.md
With commands:    Skill-specific files
On request:       Everything else
```

## Example: /pai:standup

```markdown
## Memory Access

BEFORE you respond:
1. Read all `daily/*.md` from the last 7 days
2. Read `goals/current.md`
3. Read `projects/active.md`
```

This means: Personal AI reads these files EVERY TIME you call `/pai:standup`.

## Define Your Own Memory Access

You can specify in your own skills:
- Which folders should Personal AI read?
- How far back?
- In what order?

## Pro Tip

More memory access = better answers, but slower responses. Find the balance.

---

Try it:

Look at `.claude/skills/accountability/SKILL.md` and understand how memory access works.
