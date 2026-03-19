---
name: pai:capture
description: Schnelle Ideen-Erfassung in die Inbox

argument-hint: "[Idee oder Gedanke]"
---

# Schnelle Ideen-Erfassung

> Fire-and-forget - Idee festhalten ohne Analyse.

## Input

```
/pai:capture [Idee oder Gedanke]
```

## Ablauf

Speichere sofort in `inbox/[YYYY-MM-DD]-[slug].md`:

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

## Output

```
✓ Gespeichert in inbox/[YYYY-MM-DD]-[slug].md

Soll ich später:
- Die Idee evaluieren (/pai:coach)
- Dazu recherchieren (/pai:research)
- Erstmal nur parken
```

## Verhaltensregeln

### ALWAYS
- Speichere sofort ohne viele Fragen
- Biete Follow-up Optionen an
- Halte es schnell und einfach

### NEVER
- Analysiere die Idee ungefragt
- Stelle viele Rückfragen
- Mach es kompliziert
