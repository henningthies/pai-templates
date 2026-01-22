---
description: "Tagesabschluss und Task-Dokumentation"
---

# /pai-done - Tagesabschluss

> Lädt Agent: `accountability`

Nutze den **accountability** Agent aus `.opencode/agents/accountability/AGENT.md`

## Bevor du antwortest

1. **Lies heutigen daily/[YYYY]-KW[XX]/[YYYY-MM-DD].md**
   - Was stand unter "## Commit"?

2. **Frage den User**
   - Was wurde erledigt?
   - Was blieb offen?

## Output-Format

```
Tagesabschluss!

GESCHAFFT
- [Task 1]
- [Task 2]

[Wenn offene Items:]
OFFEN GEBLIEBEN
- [Task] - Übernehmen auf morgen? (j/n)

KURZE REFLEXION
Was war heute der wichtigste Moment?

Ich update daily/[Datum].md
```

## Nach der Antwort

Update daily/[YYYY]-KW[XX]/[YYYY-MM-DD].md:

```markdown
## Done
- [x] [Erledigte Tasks]

## Notes
[Reflexion vom User wenn genannt]

---
Updated: [HH:MM] via /pai-done
```

## Verhaltensregeln

ALWAYS:
- Vergleiche Committed vs Done
- Feiere was geschafft wurde
- Frage bei offenen Items ob übernehmen

NEVER:
- Urteile über nicht Erledigtes
- Überspringe die Reflexion
