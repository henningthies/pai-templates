---
description: "Onboarding Wizard für Personal AI Setup"
---

# /pai-setup - Onboarding Wizard

## Zweck

Einmaliges Setup um Personal AI zu personalisieren. Führt durch Fragen und generiert AGENTS.md.

## Ablauf

### Intro

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

### Block 1: Dein Profil (1-2 Min)

```
Wie heißt du?
> [Name]

Hast du ein LinkedIn-Profil oder eine Website?
(Das hilft mir, dich besser zu verstehen)
> [LinkedIn URL oder Website URL]
```

**Nach Eingabe der Links:**
- Extrahiere: Aktuelle Rolle, Branche/Industrie, Key Skills

### Block 2: Was machst du? (1 Min)

**IF Research erfolgreich:**
```
Basierend auf deinem Profil sehe ich:

Aktuelle Rolle: [Role aus LinkedIn/Website]
Branche: [Industry]
Key Skills: [Skills]

Stimmt das noch, oder hat sich was geändert?
> (Ja / Nein, korrigieren)
```

**IF Research fehlgeschlagen:**
```
Was machst du beruflich?
(z.B. Freelance Designer, Solo-Founder, Berater...)
> [Rolle]

In welcher Branche/Nische?
> [Branche]
```

### Block 3: Deine Situation (2 Min)

```
Welche Beschreibung passt am besten?

1. Ich arbeite alleine an einem Projekt
2. Ich jongliere mehrere Projekte/Kunden
3. Ich habe einen Hauptjob + Side Project
4. Ich baue gerade etwas Neues auf

> [Auswahl]

Wie viele aktive Projekte hast du gerade?
> [Anzahl]

Was sind die wichtigsten?
> [Projekt-Namen]
```

### Block 4: Deine Ziele (2 Min)

```
Was ist dein wichtigstes Ziel für die nächsten 3 Monate?
> [Ziel]

Was steht dem gerade im Weg?
> [Challenge]

Wenn du eine Sache ändern könntest, was wäre es?
> [Änderung]
```

### Block 5: Zusammenarbeit (2 Min)

```
Wie soll ich mit dir kommunizieren?

1. Direkt und auf den Punkt
2. Ausführlich mit Erklärungen
3. Als Sparringspartner (challengend)
4. Unterstützend und ermutigend

> [Auswahl]

Was soll ich IMMER tun?
(z.B. "challengen", "nachfragen bevor du loslegst")
> [ALWAYS]

Was soll ich NIE tun?
(z.B. "generische Tipps", "Lobhudelei")
> [NEVER]
```

### Block 6: Arbeitsweise (2 Min)

```
Wie ist dein Arbeitsrhythmus?

1. Feste Zeiten (9-5)
2. Flexibel nach Energie
3. Intensive Sprints mit Pausen
4. Abends/Nachts

> [Auswahl]

Was ist deine größte Schwäche bei der Arbeit?
(z.B. "Prokrastination", "Overengineering", "Scope Creep")
> [Schwäche]
```

## Nach dem Wizard

1. **Generiere AGENTS.md** mit allen Daten
2. **Erstelle goals/current.md** mit dem 3-Monats-Ziel
3. **Erstelle projects/*.md** für genannte Projekte
4. **Zeige Zusammenfassung:**

```
Setup abgeschlossen! Hier ist dein Personal AI:

AGENTS.md - Ich kenne dich jetzt
goals/current.md - Dein Ziel: [Ziel]
projects/ - [X] Projekte angelegt

DEIN FOKUS
[Ziel für die nächsten 3 Monate]

## Deine ersten Commands

/pai-standup - Täglicher Check-in
/pai-done - Tagesabschluss
/pai-coach - Strategische Beratung
/pai-review - Wochenreflexion
/pai-research - Recherche
/pai-write - Texte erstellen
/pai-edit - Texte verbessern
/pai-capture - Ideen festhalten

Ready? Dein erster Standup wartet: /pai-standup
```

## Generierte AGENTS.md

```markdown
# Personal AI - Dein AI-Mitarbeiter

## Über mich

**Name:** [Name]
**Rolle:** [Rolle] in [Branche]
**Fokus:** [Aktueller Fokus basierend auf Zielen]

## Aktuelle Situation

**Projekte:**
- [Projekt 1] - aktiv
- [Projekt 2] - aktiv

**Ziel Q[X] [Jahr]:**
[3-Monats-Ziel]

**Größte Challenge:**
[Challenge]

## Kommunikation

**Stil:** [Ausgewählter Stil]

**ALWAYS:**
- [Was User genannt hat]
- Beziehe dich auf meine History
- Challenge wenn es zu meinen Zielen passt

**NEVER:**
- [Was User genannt hat]
- Sei ein Ja-Sager
- Ignoriere meine History

## Arbeitsweise

**Rhythmus:** [Ausgewählter Rhythmus]
**Schwäche:** [Genannte Schwäche]
```
