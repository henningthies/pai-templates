# Tip 5: Research with Context

**Category:** Basics

## Why Personal AI Research Is Different

When you use `/pai:research`, Personal AI doesn't research blindly.

Personal AI knows:
- Your goals (from `goals/`)
- Your past decisions (from `knowledge/decisions/`)
- Your context (from CLAUDE.md)

That means: The research is **tailored to you**.

## Example

```
/pai:research Which CRM is right for me?
```

Instead of generic CRM lists, you get:
- Recommendations based on your company size
- Filtering by your budget
- Focus on features that fit your goals

## Output

Personal AI delivers:
1. Summary (1 paragraph)
2. Top 3 options with pros/cons
3. Recommendation for YOU
4. Next steps

---

Try it:

What have you been meaning to research for a while?
```
/pai:research [your topic]
```
