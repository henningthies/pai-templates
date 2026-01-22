# Extending Personal AI

> How to add your own skills, commands, and customizations.

## Overview

Personal AI is modular:

```
.claude/
├── commands/pai/     # Commands (triggers)
└── skills/           # Skills (behavior)
```

- **Commands** = What the user types (`/pai:standup`)
- **Skills** = How Personal AI behaves (rules, context, output format)

## Creating Your Own Skill

### 1. Create Folder

```bash
mkdir -p .claude/skills/my-skill
```

### 2. Write SKILL.md

```markdown
# Skill: My Skill

> Short description of what the skill does.

## Role

You are [role]. Your task is [task].

## Memory Access

BEFORE you respond:
1. Read [relevant files]
2. Check [relevant context]

## Behavior Rules

### ALWAYS
- [Rule 1]
- [Rule 2]

### NEVER
- [Anti-rule 1]
- [Anti-rule 2]

## Output Format

```
[What the output should look like]
```
```

### Example: Brainstorming Skill

```markdown
# Skill: Brainstorming

> Generates many ideas without judgment.

## Role

You are a creative brainstorming partner. Quantity over quality.

## Behavior Rules

### ALWAYS
- Generate at least 10 ideas
- Vary between obvious and wild
- Build on ideas ("And if we combine that with...")
- Keep energy high

### NEVER
- Evaluate or criticize ideas
- Say "That won't work"
- Stop after just a few ideas

## Output Format

```
BRAINSTORM: [Topic]

1. [Idea]
2. [Idea]
...
10. [Idea]

WILD IDEAS
11. [Crazy idea]
12. [Even crazier]

Which ones do you want to explore further?
```
```

## Creating Your Own Command

### 1. Create Command File

```bash
touch .claude/commands/pai/brainstorm.md
```

### 2. Write Command

```markdown
# /pai:brainstorm - Generate Ideas

> Loads skill: `brainstorming`

Use the **brainstorming** skill from `.claude/skills/brainstorming/SKILL.md`

## Context

The user wants to generate ideas on a topic.

## Flow

1. Ask for the topic (if not provided)
2. Generate 10+ ideas
3. Add 2-3 wild ideas
4. Ask which to explore further
```

### 3. Test

```bash
claude
> /pai:brainstorm
```

## Customizing CLAUDE.md

The `CLAUDE.md` is the heart. This is where you define yourself:

### Important Sections

```markdown
## About Me
[Who you are - name, role, context]

## Current Situation
[Projects, goals, challenges]

## Communication
[ALWAYS/NEVER rules for AI]

## Work Style
[Rhythm, preferences, weaknesses]
```

### ALWAYS/NEVER Rules

Use clear imperative language:

```markdown
**ALWAYS:**
- Reference my history (daily/, knowledge/)
- Challenge my assumptions
- Ask "why" before providing solutions

**NEVER:**
- Give generic productivity tips
- Be a yes-man
- Ignore my earlier decisions
```

### Best Practices

- **50-200 lines** - Not too long, not too short
- **Scannable** - Bullet points, clear sections
- **Specific** - No vague statements
- **Keep current** - Review quarterly

## Adding a New Knowledge Area

You can extend `knowledge/`:

```
knowledge/
├── research/       # Research
├── learnings/      # Learnings
├── decisions/      # Decisions
├── competitors/    # NEW: Competitor info
├── customers/      # NEW: Customer insights
└── frameworks/     # NEW: Frameworks you use
```

### Skill for New Area

If you use a new area, create a skill that accesses it:

```markdown
# Skill: Competitor Analysis

## Memory Access

BEFORE you respond:
1. Read `knowledge/competitors/*.md`
2. Search for relevant competitor
```

## Extending Project Structure

You can add more structure to `projects/`:

```
projects/
├── active/
│   ├── project-a.md
│   └── project-b.md
├── parked/
│   └── old-idea.md
└── completed/
    └── finished-project.md
```

## Custom Routines

Create commands for recurring workflows:

### Example: Monthly Review

```markdown
# /pai:monthly - Monthly Review

> Extends: `reflection` skill

## Flow

1. Read all `weekly/*.md` for the month
2. Read all `daily/*.md` for the month
3. Aggregate to monthly level
4. Check quarterly goals
5. Save in `monthly/[YYYY-MM].md`
```

## Tips for Your Own Extensions

### 1. Start Small

Start with one skill, test it, iterate.

### 2. Skill Before Command

Define the behavior (skill) first, then the trigger (command).

### 3. Use Memory

The eye-opener is memory. Let skills access history:

```markdown
## Memory Access
BEFORE you respond, read [relevant files]
```

### 4. Define ALWAYS/NEVER Clearly

Vague rules = vague behavior. Be specific.

### 5. Set Output Format

Define what the output should look like. Consistency helps.

## Examples for Inspiration

### Networking Skill

```markdown
# Skill: Networking

## Role
You help me maintain contacts and do follow-ups.

## Memory Access
Read `knowledge/contacts/*.md`

## Behavior Rules
ALWAYS:
- Remind me of overdue follow-ups
- Suggest connection points

NEVER:
- Generate spam templates
- Forget the context of the relationship
```

### Content Planning Skill

```markdown
# Skill: Content Planning

## Role
You help me plan and track content.

## Memory Access
Read `knowledge/content-calendar.md`
Read `knowledge/content-ideas.md`

## Behavior Rules
ALWAYS:
- Show what's planned for this week
- Suggest topics based on trends

NEVER:
- Overload with too many ideas
- Ignore what's already planned
```

---

## Summary

| What | Where | Format |
|------|-------|--------|
| New skill | `.claude/skills/[name]/SKILL.md` | Role, Memory, ALWAYS/NEVER |
| New command | `.claude/commands/pai/[name].md` | Skill reference, flow |
| Extend context | `CLAUDE.md` | About me, ALWAYS/NEVER |
| Knowledge area | `knowledge/[area]/` | Markdown files |

> "Personal AI grows with you. And you can make it grow however you want."
