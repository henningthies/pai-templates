# Tip 18: Memory-Zugriff verstehen

**Kategorie:** Power-User

## Wie Personal AI "sich erinnert"

Personal AI hat kein echtes Gedächtnis. Was Personal AI hat: **Zugriff auf Dateien.**

Wenn ein Command sagt "Lies die letzten 7 Daily Notes", dann tut Personal AI das - und hat damit "Erinnerungen" an die letzte Woche.

## Die Memory-Hierarchie

```
Immer gelesen:     CLAUDE.md
Bei Commands:      Skill-spezifische Dateien
Auf Anfrage:       Alles andere
```

## Beispiel: /pai:standup

```markdown
## Memory-Zugriff

BEVOR du antwortest:
1. Lies alle `daily/*.md` der letzten 7 Tage
2. Lies `goals/current.md`
3. Lies `projects/active.md`
```

Das bedeutet: Personal AI liest diese Dateien JEDES MAL wenn du `/pai:standup` aufrufst.

## Eigene Memory-Zugriffe definieren

Du kannst in deinen eigenen Skills festlegen:
- Welche Ordner soll Personal AI lesen?
- Wie weit zurück?
- In welcher Reihenfolge?

## Pro-Tip

Mehr Memory-Zugriff = bessere Antworten, aber langsamere Responses. Finde die Balance.

---

🎯 **Probier es:**

Schau dir `.claude/skills/accountability/SKILL.md` an und verstehe wie der Memory-Zugriff funktioniert.
