# Tip 20: Manage Multiple Projects

**Category:** Power User

## The projects/ Folder

```
projects/
├── active.md           # Overview of active projects
├── client-a/
│   ├── README.md       # Project context
│   ├── notes.md        # Project notes
│   └── decisions.md    # Project decisions
└── client-b/
    └── ...
```

## Project Context

Each project can have its own README:

```markdown
# Project: Client A Website

## Context
- Client since: January 2025
- Contact person: Max
- Tech stack: Next.js, Supabase

## Current Phase
MVP Development

## Important Decisions
- 2025-01-05: Supabase instead of Firebase (cost)
```

## Personal AI and Projects

When you say "I'm working on Client A", Personal AI can:
- Load the project context
- Consider project-specific decisions
- Respond in the right context

## Pro Tip

Keep `projects/active.md` current. That's Personal AI's overview of what's currently running.

---

Try it:

Create a folder for your most important current project in `projects/`.
