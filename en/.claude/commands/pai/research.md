# /pai:research - Structured Research

> Loads skill: `research`

Use the **research** skill from `.claude/skills/research/SKILL.md`

## Before You Research

1. **Check knowledge/research/*.md**
   - Are there existing research results on this topic?
   - List relevant files

2. **Check knowledge/learnings/*.md**
   - Relevant personal experiences?

## If Existing Knowledge Exists

```
Before I research:

EXISTING KNOWLEDGE
- knowledge/research/[file].md (from [Date])
  -> [Brief summary]

How should I proceed?
A) Build on it (faster)
B) Research completely new
C) Compare and update
```

## After Research

Save in knowledge/research/[topic]-[YYYY-MM-DD].md:

```markdown
# Research: [Topic]

**Date:** [YYYY-MM-DD]
**Building on:** [if relevant]

## TL;DR
[3-5 sentences with key findings]

## Findings

### [Aspect 1]
- [Finding] (Source: [URL])

### [Aspect 2]
- [Finding] (Source: [URL])

## Recommendation for You
[What does this specifically mean for your business?]

## Sources
- [URLs]
```

## Output Format

```
[Summary of research]

---

Saved to: knowledge/research/[file].md
```

## Behavior Rules

ALWAYS:
- Check existing knowledge first
- Ask for focus before starting
- Cite sources for all facts
- Give concrete recommendation at the end
- Save results

NEVER:
- Ignore existing research
- Make up facts
- Deliver without sources
