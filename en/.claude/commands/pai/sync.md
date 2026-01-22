# Sync - Backup & Synchronization

Help the user back up and synchronize their Personal AI data.

## Sync Methods

The user has two options:

### Option 1: Git (Recommended for Developers)

```bash
# Check status
git status

# Commit and push everything
git add -A
git commit -m "sync: $(date +%Y-%m-%d)"
git push
```

### Option 2: Cloud Folder (Dropbox, iCloud, Google Drive)

If the user uses a cloud folder:
- Check if the folder is in cloud sync
- Explain that changes are automatically synchronized
- Recommend regular manual backups for important milestones

## Flow

1. **Ask about the method** (if not known):
   - "Do you use Git or a cloud folder (Dropbox, iCloud, etc.) for your backup?"

2. **For Git:**
   - Show `git status`
   - Summarize changes
   - Ask whether to commit and push
   - Execute with meaningful commit message

3. **For Cloud Folder:**
   - Confirm that files are automatically synchronized
   - Offer to create a manual copy if desired
   - Explain how to check sync status

## Commit Message Format

```
sync: YYYY-MM-DD [optional: context]

Examples:
- sync: 2025-01-15
- sync: 2025-01-15 after weekly review
- sync: 2025-01-15 new goals defined
```

## First-Time Setup

If no sync is set up yet:

### Git Setup
```bash
git init
git add -A
git commit -m "initial: Personal AI setup"
# Add remote (GitHub, GitLab, etc.)
git remote add origin <URL>
git push -u origin main
```

### Cloud Setup
- Move the personal-ai folder into your cloud sync folder
- Or create a symlink

## ALWAYS
- Ask about preferred method before acting
- For Git: Always show status first
- Explain what happens before executing

## NEVER
- Push without confirmation
- Overwrite without warning
- Assume a method without asking
