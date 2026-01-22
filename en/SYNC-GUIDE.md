# Sync & Backup Guide

> Your Personal AI data is valuable. Here's how to back it up.

## Quick Start

**For developers:** Git (recommended)
**For everyone else:** Cloud folder (Dropbox, iCloud, Google Drive)

---

## Option 1: Git (Recommended)

### Why Git?
- Version control: See what changed and when
- Backup: Data is safely stored on GitHub/GitLab
- Multi-device: Work from different computers
- Free: Private repos are free

### Setup

```bash
# In your personal-ai folder
cd personal-ai/claude

# Initialize Git
git init

# Create first commit
git add -A
git commit -m "initial: Personal AI setup"

# Add remote (GitHub)
git remote add origin https://github.com/YOUR-USER/personal-ai.git
git push -u origin main
```

### Daily Sync

Use the command:
```
/pai:sync
```

Or manually:
```bash
git add -A
git commit -m "sync: $(date +%Y-%m-%d)"
git push
```

### .gitignore (Optional)

If you want to exclude certain files from syncing:

```gitignore
# Sensitive data
.env
secrets/

# Temporary files
*.tmp
.DS_Store
```

---

## Option 2: Cloud Folder

### Why Cloud Folder?
- Simple: No command line needed
- Automatic: Sync happens in the background
- Familiar: You probably already use it

### Setup

#### Dropbox
1. Move `personal-ai/` into your Dropbox folder
2. Done - sync happens automatically

#### iCloud (Mac)
1. Move `personal-ai/` to `~/Library/Mobile Documents/com~apple~CloudDocs/`
2. Or: Right-click -> "Move to iCloud Drive"

#### Google Drive
1. Install Google Drive Desktop
2. Move `personal-ai/` into the Google Drive folder

### Symlink Alternative

If you don't want to move the folder:

```bash
# Example for Dropbox
ln -s ~/personal-ai ~/Dropbox/personal-ai
```

### Backup Reminder

Cloud sync is good, but for important milestones:

```bash
# Create manual backup
cp -r personal-ai/ "personal-ai-backup-$(date +%Y-%m-%d)/"
```

---

## Multi-Device Setup

### With Git

```bash
# On new device
git clone https://github.com/YOUR-USER/personal-ai.git
cd personal-ai

# Before working
git pull

# After working
git add -A && git commit -m "sync" && git push
```

### With Cloud Folder

- Files are automatically on all devices
- Wait for complete sync before working
- On conflicts: Cloud service creates copies

---

## Sync Rhythm Recommendation

| Frequency | Action |
|-----------|--------|
| Daily | After your last standup: `/pai:sync` |
| Weekly | After weekly review: Sync + short commit message |
| At milestones | Explicit commit with descriptive message |

---

## Troubleshooting

### Git: "Merge Conflict"

```bash
# View changes
git status
git diff

# For simple conflicts
git pull --rebase

# For complex conflicts: Ask your AI
/pai:sync
```

### Cloud: "Conflict file created"

1. Open both files
2. Compare the differences
3. Keep the correct version
4. Delete the conflict copy

---

## Security Tips

1. **Use private repos** - Your notes are personal
2. **Don't commit secrets** - API keys, passwords etc. don't belong in the repo
3. **Sync regularly** - More often = less data loss risk
4. **Backup the backup** - Once a month: Local copy to external drive
