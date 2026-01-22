# Personal AI Onboarding

> 10 minute setup for your AI coworker.

## Before You Start

**You need:**
- [ ] An AI CLI installed (Claude Code, OpenCode, or Gemini CLI)
- [ ] API Key configured (if required by your CLI)
- [ ] 10 minutes of time

---

## Step 1: Start Your CLI (1 min)

Navigate to your Personal AI folder and start your chosen CLI:

**Claude Code:**
```bash
cd ~/pai
claude
```

**OpenCode:**
```bash
cd ~/pai
opencode
```

**Gemini CLI:**
```bash
cd ~/pai
gemini
```

---

## Step 2: Personalize Your Context (5 min)

Each CLI reads its own context file. Run the setup:

**Claude Code:**
```
/pai:setup
```

**OpenCode:**
```
/pai-setup
```

**Gemini CLI:**
```
Help me fill out GEMINI.md. Ask me the questions
and update the file based on my answers.
```

The AI will ask you:
1. What's your name?
2. What do you do professionally?
3. What's your most important goal right now?
4. What's your biggest challenge?
5. How should I communicate with you?

**Result:** A personalized context file that the AI reads with every interaction.

### Optional: Profile Research (1-2 min)

For better personalization, give the AI your LinkedIn or website URL:

```
> https://linkedin.com/in/yourprofile
```

The AI will extract your role, industry, and skills automatically.

---

## Step 3: Define First Goal (2 min)

Tell your AI:

```
Help me define my most important goal for the next 4 weeks
in goals/current.md.
```

The AI will guide you through:
- What's the goal?
- Why is it important?
- How will you know when it's achieved?
- What's the deadline?

---

## Step 4: First Standup (2 min)

Now test it:

**Claude Code:** `/pai:standup`
**OpenCode:** `/pai-standup`
**Gemini CLI:** "Let's do a morning standup"

The AI will:
- Check your history from recent days
- Ask what you're planning today
- Save it in `daily/[DATE].md`
- Remember it for tomorrow

---

## Setup Complete!

You now have:
- Your context file personalized
- Your first goal defined
- Your first standup done

---

## What's Next?

### Daily Routine

```
Morning:    Standup -> What's on for today?
During day: Coach, research, write, capture...
Evening:    Done -> End of day wrap-up
Fridays:    Review -> Reflect on the week
```

### Learn the Commands

| Action | Claude Code | OpenCode | Gemini |
|--------|-------------|----------|--------|
| Morning check-in | `/pai:standup` | `/pai-standup` | "Standup" |
| End of day | `/pai:done` | `/pai-done` | "Done for today" |
| Quick capture | `/pai:capture` | `/pai-capture` | "Capture X" |
| Process inbox | `/pai:process` | `/pai-process` | "Go through inbox" |
| Get coached | `/pai:coach` | `/pai-coach` | "Coach me" |
| Weekly review | `/pai:review` | `/pai-review` | "Weekly review" |
| Research | `/pai:research` | `/pai-research` | "Research X" |
| Write content | `/pai:write` | `/pai-write` | "Write X" |
| Edit text | `/pai:edit` | `/pai-edit` | "Edit this" |

### Work Through the Tips

Check the `tips/` folder for 7 starter tips:
1. Context is everything
2. Daily Notes
3. Define goals
4. 3 Perspectives
5. Document decisions
6. Capture learnings
7. Growth takes time

**Recommendation:** One tip per day.

---

## FAQ

### "Do I have to write files manually?"

No! Just tell the AI what you want:
- "Write this in my Daily Notes"
- "Save this decision"
- "Create a learning from this"

### "Can I switch between CLIs?"

Yes! All three CLIs work with the same folder. Each reads its own config directory.

### "Which CLI should I use?"

- **Claude Code** - Best quality, $20/month subscription
- **OpenCode** - Flexible, pay-per-use with any LLM
- **Gemini CLI** - Free tier available

Start with what you have. Switch if needed.

---

## Next Steps

1. **Today:** Do your first real standup tomorrow morning
2. **This week:** Work through the 7 tips
3. **In 2 weeks:** Do your first Weekly Review

**The system grows with you.** The more you use it, the better it gets.
