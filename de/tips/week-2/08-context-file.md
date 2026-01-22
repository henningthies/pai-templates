# Tip 8: Deine Kontext-Datei ist deine Verfassung

**Kategorie:** Vertiefung

## Was ist deine Kontext-Datei?

Deine Kontext-Datei ist das **erste was Personal AI liest** - bei jeder einzelnen Interaktion.

| CLI | Kontext-Datei |
|-----|---------------|
| Claude Code | `CLAUDE.md` |
| OpenCode | `AGENTS.md` |
| Gemini CLI | `GEMINI.md` |

Es ist deine "Verfassung": Die grundlegenden Regeln, dein Kontext, wer du bist.

## Was gehört rein?

**Rein:**
- Wer du bist (1-2 Sätze)
- Was du machst
- Kommunikationsstil-Präferenzen
- Wichtige Constraints ("Ich arbeite alleine", "Budget ist begrenzt")

**Nicht rein:**
- Tagesaktuelle Tasks (-> daily/)
- Projekt-Details (-> projects/)
- Lange Dokumentation

## Die 50-200 Zeilen Regel

Halte deine Kontext-Datei zwischen 50-200 Zeilen. Alles was dort steht wird IMMER gelesen - also nur das Wichtigste.

## Die 6-Monats-Regel

Frag dich: "Ist das in 6 Monaten noch relevant?"
- Ja -> Kontext-Datei
- Nein -> daily/ oder projects/

---

Probier es:

Öffne deine Kontext-Datei und prüfe:
- Ist alles dort noch aktuell?
- Fehlt etwas Wichtiges?
- Ist etwas zu detailliert?
