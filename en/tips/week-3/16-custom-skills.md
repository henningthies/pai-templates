# Tip 16: Create Custom Skills

**Category:** Power User

## Commands vs Skills

- **Command** = What the user types (standup, coach, etc.)
- **Skill/Agent** = How Personal AI behaves (rules, context, format)

A command can load a skill. Multiple commands can use the same skill.

## How to Create a Skill

| CLI | Skill Location | File |
|-----|---------------|------|
| Claude Code | `.claude/skills/[name]/` | `SKILL.md` |
| OpenCode | `.opencode/agents/[name]/` | `AGENT.md` |
| Gemini CLI | `.gemini/skills/[name]/` | `SKILL.md` |

## Skill Structure

```markdown
# Skill: [Name]

## Role
[What is this skill's role?]

## Memory Access
[Which files should Personal AI read?]

## ALWAYS
- [Rule 1]
- [Rule 2]

## NEVER
- [Rule 1]
- [Rule 2]

## Output Format
[What should the response look like?]
```

## Example Skills

- **Accounting:** Knows your accounts, categories, tax rules
- **Client Communication:** Knows your tone, your templates
- **Project Management:** Knows your methodology, your tools

---

Try it:

Look at the existing skills in your CLI's config folder. What area could you add?
