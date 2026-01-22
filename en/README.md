# Personal AI - Your AI Coworker

> The system that grows with you.

## Quick Start

Choose your CLI:

**Claude Code:**
```bash
cd ~/pai
claude
/pai:setup
```

**OpenCode:**
```bash
cd ~/pai
opencode
/pai-setup
```

**Gemini CLI:**
```bash
cd ~/pai
gemini
# Then ask: "Help me fill out GEMINI.md"
```

## What is Personal AI?

Personal AI transforms your AI CLI into a personal coworker:

- **It knows you** - Your goals, projects, work style
- **It remembers** - What you committed to last week
- **It recognizes patterns** - "This is day 4 for this task"
- **It holds you accountable** - Without letting excuses slide
- **It grows with you** - More context means better results

## Three Platforms, One System

This template works with all three AI CLIs:

| | Claude Code | OpenCode | Gemini CLI |
|---|---|---|---|
| **Cost** | $20/month | Pay-per-use | Free tier |
| **Context File** | CLAUDE.md | AGENTS.md | GEMINI.md |
| **Config Dir** | .claude/ | .opencode/ | .gemini/ |
| **Commands** | `/pai:*` | `/pai-*` | Natural language |
| **Tips** | 21 (3 weeks) | 7 | 7 |

Each CLI automatically reads its own configuration. You can switch between them anytime.

## The Philosophy: Growing With You

Personal AI is not a static template. It is a **living system** that grows with you:

```
Week 1:   AI knows your name and goals
Week 4:   AI knows your patterns and weaknesses
Month 3:  AI is like a coworker who has been with you for 3 months
Year 1:   AI has your complete business history
```

### More Context = Better Results

Personal AI improves through:
- **Regular standups** - History builds up
- **Logging decisions** - AI reminds you of them
- **Saving research** - AI builds on previous knowledge
- **Recording learnings** - AI recognizes patterns over time

## Commands

| Action | Claude Code | OpenCode | Gemini CLI |
|--------|-------------|----------|------------|
| Setup | `/pai:setup` | `/pai-setup` | "Help me fill out GEMINI.md" |
| Morning | `/pai:standup` | `/pai-standup` | "Let's do a standup" |
| Evening | `/pai:done` | `/pai-done` | "End of day wrap-up" |
| Capture | `/pai:capture` | `/pai-capture` | "Capture this idea" |
| Inbox | `/pai:process` | `/pai-process` | "Let's go through the inbox" |
| Coach | `/pai:coach` | `/pai-coach` | "Coach me on [topic]" |
| Research | `/pai:research` | `/pai-research` | "Research [topic]" |
| Review | `/pai:review` | `/pai-review` | "Weekly review" |
| Write | `/pai:write` | `/pai-write` | "Write [content]" |
| Edit | `/pai:edit` | `/pai-edit` | "Edit this text" |

## Structure

```
pai/
├── CLAUDE.md              # Claude Code context
├── GEMINI.md              # Gemini CLI context
├── AGENTS.md              # OpenCode context
├── daily/                 # Daily standups (grouped by week)
│   └── [YYYY]-W[XX]/      # e.g., 2026-W03/
├── weekly/                # Weekly reviews
├── goals/                 # Your goals
├── inbox/                 # Quick ideas
├── knowledge/             # Your accumulated knowledge
│   ├── research/          # Research results
│   ├── learnings/         # What you learned
│   └── decisions/         # Decision log
├── projects/              # Your projects
├── templates/             # Content templates
├── tips/                  # 7 starter tips (Gemini/OpenCode)
├── .claude/               # Claude Code config
│   ├── commands/pai/      # Commands
│   ├── skills/            # Reusable skills
│   ├── tips/              # 21-day tutorial
│   └── hooks/             # Session hooks
├── .gemini/               # Gemini CLI config
│   └── skills/            # Skills
├── .opencode/             # OpenCode config
│   ├── agents/            # Agents
│   └── command/           # Commands
└── .obsidian/             # Obsidian vault config
```

## The Eye-Opener

**Without Personal AI (ChatGPT, etc.):**
```
You: "What's on the agenda today?"
AI: "I can't know that, tell me more..."
```

**With Personal AI:**
```
You: /pai:standup
AI: "Good morning! The landing page is now at day 4.
     Pattern detected: Deployments postponed 4 times.
     What's really blocking you there?"
```

**That's the difference between a tool and a coworker.**

## Skills / Agents

Personal AI uses reusable behaviors:

| Name | Description | Purpose |
|------|-------------|---------|
| `accountability` | Keeps you on track, recognizes patterns | standup, done |
| `coach` | 3 perspectives, decision check | coaching |
| `research` | Knowledge accumulation | research |
| `reflection` | Extract learnings | review |
| `writing` | Text variations | writing |
| `editing` | Concrete feedback | editing |

## Your Editor, Your Choice

Personal AI consists of **Markdown files**. You can open them in any editor:

- **Obsidian** - Pre-configured (see below)
- **VS Code** - Open the folder directly
- **iA Writer** - For minimalist writing
- **Or any other Markdown editor**

The AI works in parallel in the terminal - regardless of which editor you use.

### Using with Obsidian

1. Open Obsidian
2. "Open folder as vault" -> select your `pai/` folder
3. Done! The configuration is already prepared.

### Keyboard Shortcuts (pre-configured)

- `Alt + D` -> New Daily Note
- `Alt + T` -> Insert template

## Extending

Personal AI is extensible. You can add your own skills and commands.

> See [EXTENDING.md](EXTENDING.md) for details.

## Next Steps

1. Run setup for your chosen CLI
2. Do your first standup
3. Use it daily - your AI will improve
4. Extend it as needed

---

> **Personal AI - Your AI Coworker**
> The system that grows with you.

---

## License

MIT License - see [LICENSE](../LICENSE) for details.

**Contact:** personal-ai@ai-on-rails.com
