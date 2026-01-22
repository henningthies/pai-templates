# /pai:setup - Onboarding Wizard

## Zweck

Einmaliges Setup um Personal AI zu personalisieren. Führt durch Fragen und generiert CLAUDE.md.

## Ablauf

### Intro

```
Willkommen bei Personal AI!

Ich helfe dir in den nächsten 10 Minuten, dein persönliches
AI-System einzurichten.

Am Ende habe ich:
- Verstanden wer du bist und was du machst (teils durch deine Infos, teils durch Recherche)
- Deine Ziele und Challenges kennengelernt
- Deine Präferenzen für unsere Zusammenarbeit

Bereit? (ja/nein)
```

### Block 1: Dein Profil (1-2 Min + Hintergrund-Recherche)

```
Wie heißt du?
> [Name]

Hast du ein LinkedIn-Profil oder eine Website?
(Das hilft mir, dich besser zu verstehen - ich recherchiere dein Profil
während wir die anderen Fragen durchgehen)
> [LinkedIn URL oder Website URL]

🔄 Researching your profile in the background...
```

**Nach Eingabe der Links:**
- Background-Task startet mit WebFetch
- Extrahiert: Aktuelle Rolle, Branche/Industrie, Key Skills, aktuelle Fokus-Bereiche
- Speichert Ergebnisse temporär für Blocks 2-3 Vorschläge

### Block 2: Was machst du? (1 Min)

**IF Research erfolgreich:**
```
Basierend auf deinem Profil sehe ich:

📌 Aktuelle Rolle: [Role aus LinkedIn/Website]
📌 Branche: [Industry]
📌 Key Skills: [Skills]

Stimmt das noch, oder hat sich was geändert?
> (Ja / Nein, korrigieren)

[Falls Nein:]
Was machst du beruflich?
(z.B. Freelance Designer, Solo-Founder, Berater...)
> [Rolle]

In welcher Branche/Nische?
> [Branche]
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

## Research-Logik (Background-Task)

**Trigger:** Nach Block 1 (Name + Links eingegeben)

**Was wird recherchiert:**
```
WebFetch auf LinkedIn/Website mit Prompt:
"Extrahiere folgende Infos über [Name]:
- Aktuelle Job-Titel/Rolle
- Branche/Industrie
- Top 5 Skills/Expertise-Bereiche
- Aktuelle Fokus-Bereiche
- Wichtige Projekte/Erfahrungen (kurz)

Gib nur die strukturierten Daten, keine Sätze."
```

**Speicherung:**
- Ergebnisse in temporärer Datei/Variablen
- Zeitstempel: Wann recherchiert
- Quelle: Welche URL(s) verwendet

**Error Handling:**
- Falls WebFetch fehlschlägt → Block 2 zeigt normale Fragen (Fallback)
- Falls URL ungültig → Skip Recherche
- Falls mehrere Links → Kombiniere Infos

**Verwendung in Blocks 2-3:**
- Falls erfolgreich: Zeige extrahierte Infos als Vorschläge
- Falls fehlgeschlagen: Normale Fragen

**Nach Setup:**
- Speichere Research Summary in CLAUDE.md
- Lösche temporäre Forschungs-Daten

## Nach dem Wizard

1. **Warte auf Background-Research** (falls noch läuft)
   - WebFetch hat Rolle, Branche, Skills aus Profil extrahiert
   - Diese Daten werden in CLAUDE.md übernommen (oder User-Input, falls korrigiert)

2. **Generiere CLAUDE.md** mit kombinierten Daten:
   - Rolle/Branche: Research oder User-Input (was der User bestätigt/geändert hat)
   - Profile & Links: Original-URLs speichern
   - Research Summary: Was wurde recherchiert + Zeitstempel

3. **Erstelle goals/current.md** mit dem 3-Monats-Ziel
4. **Erstelle projects/*.md** für genannte Projekte
5. **Update progress/tips.md** mit Tip 1-4 als gesehen
6. **Zeige Zusammenfassung mit ersten Tips:**

```
Setup abgeschlossen! Hier ist dein Personal AI:

📄 CLAUDE.md - Ich kenne dich jetzt
📁 goals/current.md - Dein Ziel: [Ziel]
📁 projects/ - [X] Projekte angelegt

───────────────────────────────────────

🎯 DEIN FOKUS
[Ziel für die nächsten 3 Monate]

───────────────────────────────────────

## 🎓 Deine ersten 4 Tips zum Loslegen

Personal AI hat ein Tutorial-System mit 21 Tips über 3 Wochen.
Hier sind die ersten 4 - probier sie direkt aus:

───────────────────────────────────────

💡 **Tip 1: /pai:standup**
Starte jeden Tag damit. Personal AI lernt deine Patterns und
erinnert dich an offene Tasks. Je öfter, desto schlauer.

→ Probier es: `/pai:standup`

───────────────────────────────────────

💡 **Tip 2: /pai:done**
Schließe Tasks ab. Personal AI merkt sich was funktioniert hat
und wie lange Dinge wirklich dauern.

→ Nach einem Task: `/pai:done [was du erledigt hast]`

───────────────────────────────────────

💡 **Tip 3: Daily Notes**
Alles was du mit Personal AI besprichst wird in `daily/` gespeichert.
Das ist Personal AIs Langzeitgedächtnis. Mehr Notes = Schlauerer Personal AI.

───────────────────────────────────────

💡 **Tip 4: /pai:coach**
Wenn du feststeckst: Der Coach gibt dir 3 Perspektiven
(Optimist, Pessimist, Realist) statt nur einer Meinung.

→ Probier es: `/pai:coach Soll ich [deine Frage]?`

───────────────────────────────────────

📚 Weitere Tips: `/pai:tip` (ab morgen täglich 1 neuer Tip)

Ready? Dein erster Standup wartet:
```

## Generierte CLAUDE.md

```markdown
# Personal AI Context

## Über mich

**Name:** [Name]
**Rolle:** [Rolle] in [Branche]
  (Quelle: [Recherchiert aus [LinkedIn/Website] am [Datum]] ODER [Direkt angegeben])
**Fokus:** [Aktueller Fokus basierend auf Zielen]

## Profile & Links

- **LinkedIn:** [LinkedIn URL, falls angegeben]
- **Website:** [Website URL, falls angegeben]

## Research Summary

*Optional - nur wenn profil recherchiert wurde:*
- **Recherchiert am:** [Datum + Zeit]
- **Quelle(n):** LinkedIn, [Website falls vorhanden]
- **Extrahierte Infos:**
  - Aktuelle Rolle: [Role]
  - Branche: [Industry]
  - Key Skills: [Skills]
  - Fokus-Bereiche: [Focus]
- **User-Bestätigung:** [Ja / Nein mit Änderungen]

## Aktuelle Situation

**Projekte:**
- [Projekt 1] - aktiv
- [Projekt 2] - aktiv
[...]

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

[...]
```
