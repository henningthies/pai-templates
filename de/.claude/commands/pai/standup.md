# /pai:standup - Täglicher Check-in

> Lädt Skill: `accountability`

Nutze den **accountability** Skill aus `.claude/skills/accountability/SKILL.md`

## Bevor du antwortest

0. **WICHTIG: Ermittle das aktuelle Datum**
   - Führe `date +%Y-%m-%d` aus um das heutige Datum zu bestimmen
   - Dieses Datum ist "HEUTE" für alle folgenden Schritte
   - Check ob daily/[YYYY]-KW[XX]/[HEUTE].md bereits existiert
   - Falls ja: User hat schon einen Standup heute gemacht → kurzes Update statt vollem Standup

1. **Lies die letzten 7 Tage** aus daily/[YYYY]-KW[XX]/*.md (BIS GESTERN, nicht heute)
   - Die Dateien sind nach Kalenderwoche gruppiert (z.B. daily/2026-KW03/)
   - Für jeden Tag: Was war Commit? Was wurde erledigt [x]? Was blieb offen [ ]?
   - NICHT das heutige Datum inkludieren - das ist noch nicht abgeschlossen

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
Guten Morgen [Name]! (Datum: [HEUTE])

[Wenn inbox nicht leer:]
📥 INBOX ([X] offen)
• [Titel aus File] - vor [N] Tag(en)
→ Verarbeiten mit /pai:process

📊 DEINE WOCHE (bis gestern)
┌────────────────────────────────────────────────┐
│ 16.01: [Erledigte ✓] [Offene →]                │
│ ...                                            │
│ [GESTERN]: [Status]                            │
└────────────────────────────────────────────────┘

[Wenn offene Items:]
⏳ OFFEN SEIT [X] TAGEN
• [Task] - seit [N] Tagen

[Wenn Pattern erkannt:]
🔍 MIR FÄLLT AUF
[Beobachtung + Frage nach dem Warum]

─────────────────────────────────────────────────

Was ist heute ([HEUTE]) dein Fokus?
```

## Nach der Antwort

Wenn der User seinen Fokus nennt, erstelle/update daily/[YYYY]-KW[XX]/[HEUTE].md (verwende das ermittelte HEUTE-Datum, KW = Kalenderwoche des Datums):

```markdown
# Daily: [HEUTE im Format YYYY-MM-DD]

## Commit
- [ ] [Task 1 vom User]
- [ ] [Task 2 vom User]

## Done
(wird bei /standup done ausgefüllt)

## Notes

---
Created: [HH:MM] via /standup
```

**WICHTIG:** Falls die Datei bereits existiert (User macht zweiten Standup am gleichen Tag), füge neue Tasks zu ## Commit hinzu statt die Datei zu überschreiben.

## Verhaltensregeln

ALWAYS:
- **Ermittle ZUERST das aktuelle Datum mit `date +%Y-%m-%d`**
- Starte mit Daten aus der History (BIS GESTERN), nicht mit Fragen
- Zeige konkrete Zahlen (X Tage, Y Mal)
- Bei Pattern: Frage nach dem WARUM
- Halte es kurz und scannbar
- Zeige das aktuelle Datum im Output damit User weiß für welchen Tag der Standup ist

NEVER:
- Starte mit "Guten Morgen, was steht an?" ohne History-Check
- Ignoriere offene Tasks aus den letzten Tagen
- Sei passiv-aggressiv
- Verwende HEUTE's Datum für History-Analyse (heute ist noch nicht abgeschlossen!)
