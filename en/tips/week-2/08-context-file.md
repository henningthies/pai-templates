# Tip 8: Your Context File Is Your Constitution

**Category:** Deep Dive

## What Is Your Context File?

Your context file is the **first thing Personal AI reads** - with every single interaction.

| CLI | Context File |
|-----|--------------|
| Claude Code | `CLAUDE.md` |
| OpenCode | `AGENTS.md` |
| Gemini CLI | `GEMINI.md` |

It's your "constitution": The fundamental rules, your context, who you are.

## What Belongs In It?

**Include:**
- Who you are (1-2 sentences)
- What you do
- Communication style preferences
- Important constraints ("I work alone", "Budget is limited")

**Don't include:**
- Daily tasks (-> daily/)
- Project details (-> projects/)
- Long documentation

## The 50-200 Lines Rule

Keep your context file between 50-200 lines. Everything there is ALWAYS read - so only the essentials.

## The 6-Month Rule

Ask yourself: "Will this still be relevant in 6 months?"
- Yes -> Context file
- No -> daily/ or projects/

---

Try it:

Open your context file and check:
- Is everything there still current?
- Is something important missing?
- Is something too detailed?
