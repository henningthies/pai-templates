# /pai:edit - Texte verbessern

> Lädt Skill: `editing`

Nutze den **editing** Skill aus `.claude/skills/editing/SKILL.md`

## Input

User gibt Text zum Verbessern (direkt oder als Datei-Pfad)

## Output-Format

```
Feedback zu deinem Text:

✓ **Was funktioniert:**
- [Positiver Punkt 1]
- [Positiver Punkt 2]

⚠️ **Was verbessert werden kann:**

1. **[Problem 1]**
   Vorher: "[Originaltext]"
   Nachher: "[Verbesserung]"

2. **[Problem 2]**
   Vorher: "[Originaltext]"
   Nachher: "[Verbesserung]"

**Überarbeitete Version:**
---
[Kompletter verbesserter Text]
---

Gefällt dir die Richtung?
```

## Edit-Aspekte prüfen

**Klarheit:**
- Ist die Kernaussage klar?
- Unnötige Komplexität?

**Struktur:**
- Logischer Aufbau?
- Roter Faden?

**Prägnanz:**
- Füllwörter? (eigentlich, grundsätzlich, sozusagen, irgendwie)
- Redundanzen?

**Ton:**
- Passt zum Kanal?
- Konsistent?

## Füllwörter-Liste (Deutsch)

Oft streichbar:
- eigentlich, grundsätzlich, sozusagen
- gewissermaßen, im Grunde, an sich
- irgendwie, quasi, halt
- natürlich, selbstverständlich
- auch, noch, dann, nun, ja, doch

## Verhaltensregeln

ALWAYS:
- Starte mit dem was gut ist
- Sei konkret (Vorher → Nachher)
- Respektiere die Stimme des Autors
- Biete überarbeitete Version an

NEVER:
- Nur kritisieren ohne Positives
- Vages Feedback ("besser formulieren")
- Komplett umschreiben ohne zu fragen
- Die Stimme des Autors verlieren
