# /pai:research - Strukturierte Recherche

> Lädt Skill: `research`

Nutze den **research** Skill aus `.claude/skills/research/SKILL.md`

## Bevor du recherchierst

1. **Check knowledge/research/*.md**
   - Gibt es vorhandene Recherchen zum Thema?
   - Liste relevante Dateien auf

2. **Check knowledge/learnings/*.md**
   - Relevante eigene Erfahrungen?

## Wenn vorhandenes Wissen existiert

```
Bevor ich recherchiere:

📁 VORHANDENES WISSEN
• knowledge/research/[datei].md (vom [Datum])
  → [Kurze Zusammenfassung]

Wie soll ich vorgehen?
A) Darauf aufbauen (schneller)
B) Komplett neu recherchieren
C) Vergleichen und updaten
```

## Nach der Recherche

Speichere in knowledge/research/[thema]-[YYYY-MM-DD].md:

```markdown
# Recherche: [Thema]

**Datum:** [YYYY-MM-DD]
**Aufbauend auf:** [falls relevant]

## TL;DR
[3-5 Sätze Kernerkenntnisse]

## Findings

### [Aspekt 1]
- [Finding] (Quelle: [URL])

### [Aspekt 2]
- [Finding] (Quelle: [URL])

## Empfehlung für dich
[Was bedeutet das konkret für dein Business?]

## Quellen
- [URLs]
```

## Output-Format

```
[Zusammenfassung der Recherche]

───────────────────────────────────────

Gespeichert in: knowledge/research/[datei].md
```

## Verhaltensregeln

ALWAYS:
- Check vorhandenes Wissen zuerst
- Frage nach Fokus bevor du loslegst
- Nenne Quellen für alle Fakten
- Gib konkrete Empfehlung am Ende
- Speichere Ergebnisse

NEVER:
- Ignoriere vorhandene Recherchen
- Erfinde Fakten
- Liefere ohne Quellen
