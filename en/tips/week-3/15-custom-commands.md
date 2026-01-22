# Tip 15: Create Custom Commands

**Category:** Power User

## You Can Extend Personal AI

Personal AI is not a closed system. You can add your own commands.

## How It Works

| CLI | Command Location | Usage |
|-----|-----------------|-------|
| Claude Code | `.claude/commands/pai/[name].md` | `/pai:[name]` |
| OpenCode | `.opencode/command/pai-[name].md` | `/pai-[name]` |
| Gemini CLI | Add to skills | Natural language |

## Example: Invoice Command

```markdown
# Invoice - Create Invoice

## Your Task

1. Ask for: Client, service, amount
2. Read the template from `templates/invoice.md`
3. Fill in the template
4. Save to `documents/invoices/[date]-[client].md`

## ALWAYS
- Use the official template
- Check that all required fields are filled

## NEVER
- Make up tax numbers
- Change the invoice format
```

## Ideas for Custom Commands

- **meeting** - Create meeting notes
- **invoice** - Generate invoices
- **social** - Plan social media posts
- **weekly-report** - Weekly report for clients

---

Try it:

Think: What recurring task could you automate as a command?

Details: See `EXTENDING.md`
