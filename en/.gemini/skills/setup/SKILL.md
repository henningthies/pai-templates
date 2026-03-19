---
name: pai:setup
description: Onboarding wizard - personalize Personal AI
disable-model-invocation: true
---

# Onboarding Wizard

> One-time setup to personalize your Personal AI.

## Intro

```
Welcome to Personal AI!

I'll help you set up your personal AI system
in about 10 minutes.

By the end I'll have:
- Understood who you are and what you do
- Learned your goals and challenges
- Your preferences for how we work together

Ready? (yes/no)
```

## Block 1: Your Profile (1-2 min + background research)

```
What's your name?
> [Name]

Do you have a LinkedIn profile or website?
> [URL]

Researching your profile in the background...
```

After links are entered: Start background task with WebFetch.
Extract: Current role, industry, key skills, focus areas.

## Block 2: What do you do? (1 min)

**If research successful:**
```
Based on your profile I see:
- Current role: [from LinkedIn/Website]
- Industry: [Industry]
- Key skills: [Skills]

Is this still accurate, or has anything changed?
```

**If research failed:**
```
What do you do professionally?
In which industry/niche?
```

## Block 3: Your Situation (2 min)

```
Which description fits best?
1. I'm working solo on a project
2. I'm juggling multiple projects/clients
3. I have a main job + side project
4. I'm building something new

How many active projects do you have right now?
What are the most important ones?
```

## Block 4: Your Goals (2 min)

```
What's your most important goal for the next 3 months?
What's standing in the way right now?
If you could change one thing, what would it be?
```

## Block 5: Collaboration (2 min)

```
How should I communicate with you?
1. Direct and to the point
2. Detailed with explanations
3. As a sparring partner (challenging)
4. Supportive and encouraging

What should I ALWAYS do?
What should I NEVER do?
```

## Block 6: Work Style (2 min)

```
What's your work rhythm?
1. Fixed hours (9-5)
2. Flexible based on energy
3. Intensive sprints with breaks
4. Evenings/nights

What's your biggest weakness at work?
```

## After the Wizard

1. **Wait for background research** (if still running)
2. **Generate CLAUDE.md** with combined data
3. **Create goals/current.md** with the 3-month goal
4. **Create projects/*.md** for mentioned projects
5. **Update progress/tips.md** with tips 1-4 as seen
6. **Show summary:**

```
Setup complete! Here's your Personal AI:

CLAUDE.md - I know you now
goals/current.md - Your goal: [Goal]
projects/ - [X] projects created

─────────────────────────────────────────────────

YOUR FOCUS
[Goal for the next 3 months]

─────────────────────────────────────────────────

Your first tips to get started:

Tip 1: /pai:standup - Start every day with this.
Tip 3: Daily Notes - Everything gets saved in daily/.
Tip 4: /pai:coach - 3 perspectives instead of one opinion.

More tips: /pai:tip (1 new tip daily)

Ready? Your first standup awaits.
```

## Generated CLAUDE.md Structure

```markdown
# Personal AI - Your AI Business Partner

> The system that grows with you.

## About Me
**Name:** [Name]
**Role:** [Role] in [Industry]
**Location:** [if known]

## Profiles
- **LinkedIn:** [URL]
- **Website:** [URL]

## Current Situation
[Projects, focus, context]

## Goal Q[X] [Year]
[3-month goal + strategy]

## Communication
**Style:** [Selected style]
**ALWAYS:** [What user mentioned]
**NEVER:** [What user mentioned]

## Work Style
**Rhythm:** [Selected rhythm]
**Weakness:** [Mentioned weakness]

## Available Roles
[Standard roles table]

## Memory Access
[Standard instructions]

## File Structure
[Standard structure]
```
