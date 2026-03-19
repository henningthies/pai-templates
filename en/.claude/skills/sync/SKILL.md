---
name: pai:sync
description: Backup and synchronization via Git
disable-model-invocation: true
---

# Sync - Backup & Synchronization

## Process

1. **Ask about method** (if not known): Git or cloud folder?

2. **For Git:**
   - Show `git status`
   - Summarize changes
   - Ask whether to commit and push
   - Commit message: `sync: YYYY-MM-DD [optional: context]`

3. **For Cloud folder:**
   - Confirm automatic sync
   - Offer manual copy

## Commit Message Format

```
sync: YYYY-MM-DD [optional: context]

Examples:
- sync: 2025-01-15
- sync: 2025-01-15 after weekly review
- sync: 2025-01-15 new goals defined
```

## Initial Setup (if needed)

### Git Setup
```bash
git init
git add -A
git commit -m "initial: Personal AI setup"
git remote add origin <URL>
git push -u origin main
```

## Behavior Rules

### ALWAYS
- Ask about method before acting
- Always show status first
- Explain what happens before executing

### NEVER
- Push without confirmation
- Overwrite without warning
- Assume a method without asking
