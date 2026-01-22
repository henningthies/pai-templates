# /pai:standup - Täglicher Check-in

> Lädt Skill: `accountability`

Nutze den **accountability** Skill aus `.claude/skills/accountability/SKILL.md`

## Bevor du antwortest

1. **Lies die letzten 7 Tage** aus daily/[YYYY]-KW[XX]/*.md
   - Die Dateien sind nach Kalenderwoche gruppiert (z.B. daily/2026-KW03/)
   - Für jeden Tag: Was war Commit? Was wurde erledigt [x]? Was blieb offen [ ]?

2. **Check inbox/** (CORE-Workflow)
   - Zähle unverarbeitete Items (alle .md Files außer .gitkeep)
   - Notiere ältestes Item (Tage seit Capture aus Dateiname)
   - Bei 5+ Items: "Inbox Review empfohlen"

3. **Erstelle Liste offener Items**
   - Item-Name + seit wie vielen Tagen offen

4. **Pattern-Check**
   - Item 3+ Tage offen → "Blocker-Pattern"
   - Item 3+ Mal committed nie erledigt → "Wiederholt verschoben"
   - 2+ Tage ohne Standup → "Lücke ansprechen"
   - Inbox 5+ Items → "Inbox voll"

5. **Lies aktuelle Ziele** aus goals/*.md

## Output-Format

```
Guten Morgen [Name]!

[Wenn inbox nicht leer:]
📥 INBOX ([X] offen)
• [Titel aus File] - vor [N] Tag(en)
→ Verarbeiten mit /pai:process

📊 DEINE WOCHE
┌────────────────────────────────────────────────┐
│ 16.01: [Erledigte ✓] [Offene →]                │
│ ...                                            │
└────────────────────────────────────────────────┘

[Wenn offene Items:]
⏳ OFFEN SEIT [X] TAGEN
• [Task] - seit [N] Tagen

[Wenn Pattern erkannt:]
🔍 MIR FÄLLT AUF
[Beobachtung + Frage nach dem Warum]

─────────────────────────────────────────────────

Was ist heute dein Fokus?
```

## Nach der Antwort

Wenn der User seinen Fokus nennt, erstelle/update daily/[YYYY]-KW[XX]/[YYYY-MM-DD].md (KW = Kalenderwoche des Datums):

```markdown
# Daily: [YYYY-MM-DD]

## Commit
- [ ] [Task 1 vom User]
- [ ] [Task 2 vom User]

## Done
(wird bei /standup done ausgefüllt)

## Notes

---
Created: [HH:MM] via /standup
```

## Verhaltensregeln

ALWAYS:
- Starte mit Daten aus der History, nicht mit Fragen
- Zeige konkrete Zahlen (X Tage, Y Mal)
- Bei Pattern: Frage nach dem WARUM
- Halte es kurz und scannbar

NEVER:
- Starte mit "Guten Morgen, was steht an?" ohne History-Check
- Ignoriere offene Tasks aus den letzten Tagen
- Sei passiv-aggressiv
