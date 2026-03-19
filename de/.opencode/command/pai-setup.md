---
description: "Onboarding Wizard - Personal AI personalisieren"
---

# /pai-setup - Onboarding Wizard

> Einmaliges Setup um Personal AI zu personalisieren.

## Intro

```
Willkommen bei Personal AI!

Ich helfe dir in den nächsten 10 Minuten, dein persönliches
AI-System einzurichten.

Am Ende habe ich:
- Verstanden wer du bist und was du machst
- Deine Ziele und Challenges kennengelernt
- Deine Präferenzen für unsere Zusammenarbeit

Bereit? (ja/nein)
```

## Block 1: Dein Profil (1-2 Min + Hintergrund-Recherche)

```
Wie heißt du?
> [Name]

Hast du ein LinkedIn-Profil oder eine Website?
> [URL]

Researching your profile in the background...
```

Nach Eingabe der Links: Background-Task mit WebFetch starten.
Extrahiere: Aktuelle Rolle, Branche, Key Skills, Fokus-Bereiche.

## Block 2: Was machst du? (1 Min)

**Falls Research erfolgreich:**
```
Basierend auf deinem Profil sehe ich:
- Aktuelle Rolle: [aus LinkedIn/Website]
- Branche: [Industry]
- Key Skills: [Skills]

Stimmt das noch, oder hat sich was geändert?
```

**Falls Research fehlgeschlagen:**
```
Was machst du beruflich?
In welcher Branche/Nische?
```

## Block 3: Deine Situation (2 Min)

```
Welche Beschreibung passt am besten?
1. Ich arbeite alleine an einem Projekt
2. Ich jongliere mehrere Projekte/Kunden
3. Ich habe einen Hauptjob + Side Project
4. Ich baue gerade etwas Neues auf

Wie viele aktive Projekte hast du gerade?
Was sind die wichtigsten?
```

## Block 4: Deine Ziele (2 Min)

```
Was ist dein wichtigstes Ziel für die nächsten 3 Monate?
Was steht dem gerade im Weg?
Wenn du eine Sache ändern könntest, was wäre es?
```

## Block 5: Zusammenarbeit (2 Min)

```
Wie soll ich mit dir kommunizieren?
1. Direkt und auf den Punkt
2. Ausführlich mit Erklärungen
3. Als Sparringspartner (challengend)
4. Unterstützend und ermutigend

Was soll ich IMMER tun?
Was soll ich NIE tun?
```

## Block 6: Arbeitsweise (2 Min)

```
Wie ist dein Arbeitsrhythmus?
1. Feste Zeiten (9-5)
2. Flexibel nach Energie
3. Intensive Sprints mit Pausen
4. Abends/Nachts

Was ist deine größte Schwäche bei der Arbeit?
```

## Nach dem Wizard

1. **Warte auf Background-Research** (falls noch läuft)
2. **Generiere AGENTS.md** mit kombinierten Daten
3. **Erstelle goals/current.md** mit dem 3-Monats-Ziel
4. **Erstelle projects/*.md** für genannte Projekte
5. **Update progress/tips.md** mit Tip 1-4 als gesehen
6. **Zeige Zusammenfassung:**

```
Setup abgeschlossen! Hier ist dein Personal AI:

AGENTS.md - Ich kenne dich jetzt
goals/current.md - Dein Ziel: [Ziel]
projects/ - [X] Projekte angelegt

─────────────────────────────────────────────────

DEIN FOKUS
[Ziel für die nächsten 3 Monate]

─────────────────────────────────────────────────

Deine ersten Tips zum Loslegen:

Tip 1: /pai-standup - Starte jeden Tag damit.
Tip 3: Daily Notes - Alles wird in daily/ gespeichert.
Tip 4: /pai-coach - 3 Perspektiven statt einer Meinung.

Weitere Tips: /pai-tip (täglich 1 neuer Tip)

Ready? Dein erster Standup wartet.
```

## Generierte AGENTS.md Struktur

```markdown
# Personal AI - Your AI Business Partner

> The system that grows with you.

## About Me
**Name:** [Name]
**Role:** [Rolle] in [Branche]
**Location:** [falls bekannt]

## Profiles
- **LinkedIn:** [URL]
- **Website:** [URL]

## Current Situation
[Projekte, Fokus, Kontext]

## Goal Q[X] [Jahr]
[3-Monats-Ziel + Strategy]

## Communication
**Style:** [Ausgewählter Stil]
**ALWAYS:** [Was User genannt hat]
**NEVER:** [Was User genannt hat]

## Work Style
**Rhythm:** [Ausgewählter Rhythmus]
**Weakness:** [Genannte Schwäche]

## Available Roles
[Standard-Rollen-Tabelle]

## Memory Access
[Standard-Anweisungen]

## File Structure
[Standard-Struktur]
```
