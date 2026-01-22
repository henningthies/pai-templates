# Tip 22: The CORE Workflow - Nothing Gets Lost

**Category:** Advanced

## The Problem

You have `/pai:capture` for quick thoughts. You have `/pai:standup` for starting your day.

But what happens to the thoughts in inbox/? They pile up. You forget about them. Or worse: you never look at them again.

## The Solution: CORE

CORE is a proven productivity framework:

```
C - Capture    → Capture thoughts immediately
O - Organize   → Automatic via filename
R - Review     → Standup shows inbox status
E - Engage     → Process turns them into tasks
```

## How It Works in Personal AI

**1. Capture** - On the go, in the shower, in meetings:
```
/pai:capture Test feature X with approach Y
```
→ Lands in `inbox/2024-01-15-feature-x.md`

**2. Organize** - Happens automatically:
- Filename contains date
- No tags, no categories needed

**3. Review** - During daily standup:
```
/pai:standup

> INBOX (3 open)
> • Test feature X with Y - 2 days ago
> • Customer feedback on pricing - yesterday
> → Process with /pai:process
```

**4. Engage** - Process the inbox:
```
/pai:process
```

For each item you decide:
- **today** → becomes task in Daily
- **tomorrow** → becomes task for tomorrow
- **park** → stays in Inbox
- **delete** → gone

## Why This Works

1. **Your mind is free** - Thoughts are stored, not in RAM
2. **Nothing gets lost** - Standup reminds you
3. **Quick decisions** - 4 options, no analysis paralysis
4. **Single source of truth** - Tasks land in Daily, not scattered everywhere

## The Trick

The inbox should regularly become **empty**. Not because you do everything, but because you decide:

- I'll do this today
- I'll do this tomorrow
- I'll park this (consciously)
- I don't need this anymore

---

**Try it:**

1. Capture 3 thoughts going through your head right now
2. Do a standup tomorrow morning
3. Process the inbox with `/pai:process`

```
/pai:capture [Thought 1]
/pai:capture [Thought 2]
/pai:capture [Thought 3]
```
