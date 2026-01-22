---
description: "Onboarding wizard for Personal AI setup"
---

# /pai-setup - Onboarding Wizard

## Purpose

One-time setup to personalize Personal AI. Walks through questions and generates AGENTS.md.

## Flow

### Intro

```
Welcome to Personal AI!

I'll help you set up your personal AI system in the next 10 minutes.

By the end, I will have:
- Understood who you are and what you do
- Learned your goals and challenges
- Your preferences for how we work together

Ready? (yes/no)
```

### Block 1: Your Profile (1-2 Min)

```
What's your name?
> [Name]

Do you have a LinkedIn profile or website?
(This helps me understand you better)
> [LinkedIn URL or Website URL]
```

**After entering links:**
- Extract: Current role, Industry, Key skills

### Block 2: What do you do? (1 Min)

**IF Research successful:**
```
Based on your profile I see:

Current role: [Role from LinkedIn/Website]
Industry: [Industry]
Key skills: [Skills]

Is this still accurate, or has something changed?
> (Yes / No, correct)
```

**IF Research failed:**
```
What do you do professionally?
(e.g., Freelance Designer, Solo Founder, Consultant...)
> [Role]

In which industry/niche?
> [Industry]
```

### Block 3: Your Situation (2 Min)

```
Which description fits best?

1. I work alone on a project
2. I juggle multiple projects/clients
3. I have a main job + side project
4. I'm building something new

> [Selection]

How many active projects do you have right now?
> [Number]

What are the most important ones?
> [Project names]
```

### Block 4: Your Goals (2 Min)

```
What's your most important goal for the next 3 months?
> [Goal]

What's currently standing in the way?
> [Challenge]

If you could change one thing, what would it be?
> [Change]
```

### Block 5: Working Together (2 Min)

```
How should I communicate with you?

1. Direct and to the point
2. Detailed with explanations
3. As a sparring partner (challenging)
4. Supportive and encouraging

> [Selection]

What should I ALWAYS do?
(e.g., "challenge me", "ask before you start")
> [ALWAYS]

What should I NEVER do?
(e.g., "generic tips", "excessive praise")
> [NEVER]
```

### Block 6: Work Style (2 Min)

```
What's your work rhythm?

1. Fixed hours (9-5)
2. Flexible based on energy
3. Intense sprints with breaks
4. Evenings/nights

> [Selection]

What's your biggest weakness at work?
(e.g., "Procrastination", "Overengineering", "Scope creep")
> [Weakness]
```

## After the Wizard

1. **Generate AGENTS.md** with all data
2. **Create goals/current.md** with the 3-month goal
3. **Create projects/*.md** for mentioned projects
4. **Show summary:**

```
Setup complete! Here's your Personal AI:

AGENTS.md - I know you now
goals/current.md - Your goal: [Goal]
projects/ - [X] projects created

YOUR FOCUS
[Goal for the next 3 months]

## Your First Commands

/pai-standup - Daily check-in
/pai-done - End of day wrap-up
/pai-coach - Strategic consulting
/pai-review - Weekly reflection
/pai-research - Research
/pai-write - Create texts
/pai-edit - Improve texts
/pai-capture - Capture ideas

Ready? Your first standup awaits: /pai-standup
```

## Generated AGENTS.md

```markdown
# Personal AI - Your AI Co-worker

## About Me

**Name:** [Name]
**Role:** [Role] in [Industry]
**Focus:** [Current focus based on goals]

## Current Situation

**Projects:**
- [Project 1] - active
- [Project 2] - active

**Goal Q[X] [Year]:**
[3-month goal]

**Biggest Challenge:**
[Challenge]

## Communication

**Style:** [Selected style]

**ALWAYS:**
- [What user mentioned]
- Reference my history
- Challenge when it fits my goals

**NEVER:**
- [What user mentioned]
- Be a yes-man
- Ignore my history

## Work Style

**Rhythm:** [Selected rhythm]
**Weakness:** [Mentioned weakness]
```
