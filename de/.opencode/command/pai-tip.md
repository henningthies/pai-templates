---
description: "Täglicher Lerntip - 22 Tips in 3 Wochen"
---

# /pai-tip - Täglicher Lerntip

> Dein täglicher Tip um Personal AI besser zu nutzen. 22 Tips in 3 Wochen.

## Deine Aufgabe

1. **Lies den Fortschritt** aus `progress/tips.md`
   - Welcher Tip wurde zuletzt gezeigt?
   - Wann wurde er gezeigt?

2. **Wähle den nächsten Tip**
   - Wenn heute noch kein Tip: zeige den nächsten in der Reihe
   - Wenn User `/pai-tip next` sagt: überspringe zum nächsten
   - Wenn User `/pai-tip [nummer]` sagt: zeige diesen spezifischen Tip

3. **Lies den Tip** aus `tips/`

   **Datei-Mapping (Tip-Nummer → Datei):**
   ```
   Week 1 (Basics):
   1  → tips/week-1/01-standup.md
   2  → tips/week-1/02-done.md
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

4. **Zeige den Tip** im Format:

```
Tip #[X] von 22 - [Kategorie]

## [Titel]

[Inhalt des Tips]

---
Probier es: [Konkreter Aufruf zum Ausprobieren]

Nächster Tip: /pai-tip (morgen) oder /pai-tip next (jetzt)
```

5. **Update den Fortschritt** (im Hintergrund)
   - Update `progress/tips.md` NACH dem Anzeigen des Tips
   - Zeige den Tip sofort - Update ist sekundär

## Wenn alle 22 Tips durch

```
Du hast alle 22 Tips durchgearbeitet!

Du kennst jetzt Personal AI in- und auswendig. Zeit für den nächsten Schritt:
-> Erstelle deinen ersten eigenen Skill (siehe EXTENDING.md)

Tip-Archiv: /pai-tip [1-22] um einen Tip nochmal zu sehen
```

## ALWAYS
- Zeige den Tip SOFORT - keine Tool-Outputs vorher
- Zeige nur EINEN Tip pro Aufruf
- Mach den Tip praktisch - immer mit "Probier es"
- Halte Tips kurz und actionable

## NEVER
- Zeige nie mehrere Tips auf einmal
- Überspringe keine Tips automatisch
