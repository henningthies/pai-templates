# /pai:setup - Onboarding Wizard

## Purpose

One-time setup to personalize Personal AI. Guides through questions and generates CLAUDE.md.

## Flow

### Intro

```
Welcome to Personal AI!

I'll help you set up your personal AI system in the next 10 minutes.

By the end, I will have:
- Understood who you are and what you do (partly through your info, partly through research)
- Learned your goals and challenges
- Your preferences for how we work together

Ready? (yes/no)
```

### Block 1: Your Profile (1-2 Min + Background Research)

```
What's your name?
> [Name]

Do you have a LinkedIn profile or website?
(This helps me understand you better - I'll research your profile
while we go through the other questions)
> [LinkedIn URL or Website URL]

Researching your profile in the background...
```

**After entering links:**
- Background task starts with WebFetch
- Extracts: Current role, industry, key skills, current focus areas
- Saves results temporarily for Blocks 2-3 suggestions

### Block 2: What Do You Do? (1 Min)

**IF Research successful:**
```
Based on your profile, I see:

Current Role: [Role from LinkedIn/Website]
Industry: [Industry]
Key Skills: [Skills]

Is this still accurate, or has something changed?
> (Yes / No, correct it)

[If No:]
What do you do professionally?
(e.g., Freelance Designer, Solo Founder, Consultant...)
> [Role]

In which industry/niche?
> [Industry]
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

1. I work alone on one project
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

What's currently in the way?
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
(e.g., "challenge me", "ask before starting")
> [ALWAYS]

What should I NEVER do?
(e.g., "generic tips", "flattery")
> [NEVER]
```

### Block 6: Work Style (2 Min)

```
What's your work rhythm?

1. Fixed hours (9-5)
2. Flexible by energy
3. Intense sprints with breaks
4. Evenings/nights

> [Selection]

What's your biggest weakness when working?
(e.g., "Procrastination", "Over-engineering", "Scope Creep")
> [Weakness]
```

## Research Logic (Background Task)

**Trigger:** After Block 1 (Name + links entered)

**What gets researched:**
```
WebFetch on LinkedIn/Website with prompt:
"Extract the following info about [Name]:
- Current job title/role
- Industry
- Top 5 skills/expertise areas
- Current focus areas
- Important projects/experiences (brief)

Return only structured data, no sentences."
```

**Storage:**
- Results in temporary file/variables
- Timestamp: When researched
- Source: Which URL(s) used

**Error Handling:**
- If WebFetch fails -> Block 2 shows normal questions (fallback)
- If URL invalid -> Skip research
- If multiple links -> Combine info

**Usage in Blocks 2-3:**
- If successful: Show extracted info as suggestions
- If failed: Normal questions

**After Setup:**
- Save research summary in CLAUDE.md
- Delete temporary research data

## After the Wizard

1. **Wait for background research** (if still running)
   - WebFetch extracted role, industry, skills from profile
   - This data gets included in CLAUDE.md (or user input if corrected)

2. **Generate CLAUDE.md** with combined data:
   - Role/Industry: Research or user input (what user confirmed/changed)
   - Profile & Links: Store original URLs
   - Research Summary: What was researched + timestamp

3. **Create goals/current.md** with the 3-month goal
4. **Create projects/*.md** for mentioned projects
5. **Update progress/tips.md** with Tips 1-4 as seen
6. **Show summary with first tips:**

```
Setup complete! Here's your Personal AI:

CLAUDE.md - I know you now
goals/current.md - Your goal: [Goal]
projects/ - [X] projects created

---

YOUR FOCUS
[Goal for the next 3 months]

---

## Your First 4 Tips to Get Started

Personal AI has a tutorial system with 21 tips over 3 weeks.
Here are the first 4 - try them right away:

---

**Tip 1: /pai:standup**
Start every day with this. Personal AI learns your patterns and
reminds you of open tasks. The more often, the smarter.

-> Try it: `/pai:standup`

---

**Tip 2: /pai:done**
Close out tasks. Personal AI remembers what worked
and how long things actually take.

-> After a task: `/pai:done [what you completed]`

---

**Tip 3: Daily Notes**
Everything you discuss with Personal AI is saved in `daily/`.
This is Personal AI's long-term memory. More notes = Smarter Personal AI.

---

**Tip 4: /pai:coach**
When you're stuck: The coach gives you 3 perspectives
(Optimist, Pessimist, Realist) instead of just one opinion.

-> Try it: `/pai:coach Should I [your question]?`

---

More tips: `/pai:tip` (starting tomorrow, 1 new tip daily)

Ready? Your first standup awaits:
```

## Generated CLAUDE.md

```markdown
# Personal AI Context

## About Me

**Name:** [Name]
**Role:** [Role] in [Industry]
  (Source: [Researched from [LinkedIn/Website] on [Date]] OR [Provided directly])
**Focus:** [Current focus based on goals]

## Profile & Links

- **LinkedIn:** [LinkedIn URL, if provided]
- **Website:** [Website URL, if provided]

## Research Summary

*Optional - only if profile was researched:*
- **Researched on:** [Date + Time]
- **Source(s):** LinkedIn, [Website if available]
- **Extracted info:**
  - Current role: [Role]
  - Industry: [Industry]
  - Key skills: [Skills]
  - Focus areas: [Focus]
- **User confirmation:** [Yes / No with changes]

## Current Situation

**Projects:**
- [Project 1] - active
- [Project 2] - active
[...]

**Goal Q[X] [Year]:**
[3-month goal]

**Biggest Challenge:**
[Challenge]

## Communication

**Style:** [Selected style]

**ALWAYS:**
- [What user mentioned]
- Reference my history
- Challenge when it aligns with my goals

**NEVER:**
- [What user mentioned]
- Be a yes-man
- Ignore my history

## Work Style

**Rhythm:** [Selected rhythm]
**Weakness:** [Mentioned weakness]

[...]
```
