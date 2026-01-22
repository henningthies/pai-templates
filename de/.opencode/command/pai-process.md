---
description: "Inbox verarbeiten: heute, morgen, parken, löschen"
---

# /pai-process - Inbox verarbeiten

## Zweck

Inbox-Items durchgehen und entscheiden: heute, morgen, parken, oder löschen.
Basiert auf dem CORE-Workflow (Capture, Organize, Review, Engage).

## Input

```
/pai-process
```

## Bevor du antwortest

1. **Lies alle Files in inbox/** (außer .gitkeep)
2. **Sortiere nach Datum** (älteste zuerst)
3. **Für jedes Item:** Lies den Inhalt

## Output-Format

```
INBOX VERARBEITEN

[Für jedes Item:]
---
[Titel aus File]
Captured: [Datum aus Dateiname]

> [Inhalt/Idee aus dem File]

Was damit?
1. heute (Task für heute)
2. morgen (Task für morgen)
3. parken (später nochmal)
4. löschen
---
```

## Nach jeder Entscheidung

| Wahl | Aktion |
|------|--------|
| **heute** | Füge `- [ ] [Inhalt]` zu daily/[YYYY]-KW[XX]/[heute].md hinzu, lösche Inbox-File |
| **morgen** | Füge `- [ ] [Inhalt]` zu daily/[YYYY]-KW[XX]/[morgen].md hinzu, lösche Inbox-File |
| **parken** | Behalte File in inbox/, gehe zum nächsten |
| **löschen** | Lösche das Inbox-File |

## Abschluss

```
Inbox verarbeitet

Ergebnis:
- [X] heute
- [X] morgen
- [X] geparkt
- [X] gelöscht

[Wenn Items zu heute:]
Dein Daily wurde aktualisiert. Viel Erfolg!
```

## Verhaltensregeln

ALWAYS:
- Zeige den vollen Inhalt des Items
- Warte auf User-Entscheidung pro Item
- Aktualisiere Daily-Files sofort
- Lösche verarbeitete Files (außer parken)

NEVER:
- Entscheide selbst was mit Items passiert
- Überspringe Items ohne zu fragen
- Behalte erledigte Items in der Inbox
