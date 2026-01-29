---
description: Schnelle Ideen-Erfassung in die Inbox
argument-hint: [idee oder gedanke]
context: fork
---

# /pai:capture - Schnelle Ideen-Erfassung

## Zweck

Schnell eine Idee, einen Gedanken oder eine Notiz festhalten ohne Analyse.

## Input

```
/capture [Idee oder Gedanke]
```

## Output

```
✓ Gespeichert in inbox/[YYYY-MM-DD]-[slug].md

Soll ich später:
- [ ] Die Idee evaluieren (/pai:coach)
- [ ] Dazu recherchieren (/pai:research)
- [ ] Erstmal nur parken
```

## Speicherformat

inbox/[YYYY-MM-DD]-[slug].md:

```markdown
# [Titel/Kurzbeschreibung]

**Captured:** [YYYY-MM-DD HH:MM]
**Status:** inbox

## Idee
[Was der User eingegeben hat]

## Notes
(später hinzufügen)

## Next
- [ ] Evaluieren
- [ ] Recherchieren
- [ ] Parken
```

## Verhaltensregeln

ALWAYS:
- Speichere sofort ohne viele Fragen
- Biete Follow-up Optionen an
- Halte es schnell und einfach

NEVER:
- Analysiere die Idee ungefragt
- Stelle viele Rückfragen
- Mach es kompliziert
