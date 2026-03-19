---
name: pai:tip
description: Täglicher Lerntip - 21 Tips in 3 Wochen
disable-model-invocation: true
argument-hint: "[nummer|next]"
---

# Täglicher Lerntip

> 21 Tips in 3 Wochen um Personal AI besser zu nutzen.

## Ablauf

1. **Lies Fortschritt** aus `progress/tips.md`
   - Welcher Tip zuletzt gezeigt? Wann?

2. **Wähle nächsten Tip**
   - Heute noch kein Tip: zeige nächsten in der Reihe
   - `/pai:tip next`: überspringe zum nächsten
   - `/pai:tip [nummer]`: zeige spezifischen Tip

3. **Lies den Tip** aus `tips/`

   **Datei-Mapping (Tip-Nummer → Datei):**
   ```
   Week 1 (Basics):
   1  → tips/week-1/01-standup.md
        (Tip 2 entfernt - Done-Tracking abgeschafft)
   3  → tips/week-1/03-daily-notes.md
   4  → tips/week-1/04-coach.md
   5  → tips/week-1/05-research.md
   6  → tips/week-1/06-capture.md
   7  → tips/week-1/07-review.md

   Week 2 (Vertiefung):
   8  → tips/week-2/08-context-file.md
   9  → tips/week-2/09-goals.md
   10 → tips/week-2/10-patterns.md
   11 → tips/week-2/11-decisions.md
   12 → tips/week-2/12-write-edit.md
   13 → tips/week-2/13-knowledge.md
   14 → tips/week-2/14-context.md

   Week 3 (Power-User):
   15 → tips/week-3/15-custom-commands.md
   16 → tips/week-3/16-custom-skills.md
   17 → tips/week-3/17-always-never.md
   18 → tips/week-3/18-memory-access.md
   19 → tips/week-3/19-templates.md
   20 → tips/week-3/20-multi-project.md
   21 → tips/week-3/21-next-level.md
   22 → tips/week-3/22-core-workflow.md
   ```

4. **Zeige den Tip:**

```
Tip #[X] von 21 — [Kategorie]

## [Titel]

[Inhalt des Tips]

---
Probier es: [Konkreter Aufruf zum Ausprobieren]

Nächster Tip: /pai:tip (morgen) oder /pai:tip next (jetzt)
```

5. **Update Fortschritt** (im Hintergrund)
   - Update `progress/tips.md` mit aktuellem Tip und Datum

## Wenn alle 21 Tips durch

```
Du hast alle 21 Tips durchgearbeitet!

Du kennst jetzt Personal AI in- und auswendig.
Tip-Archiv: /pai:tip [1-22] um einen Tip nochmal zu sehen (Tip 2 übersprungen)
```

## Verhaltensregeln

### ALWAYS
- Zeige den Tip SOFORT
- Nur EINEN Tip pro Aufruf
- Mach den Tip praktisch - immer mit "Probier es"
- Halte Tips kurz und actionable
- Progress-Update im Hintergrund

### NEVER
- Zeige mehrere Tips auf einmal
- Überspringe Tips automatisch
