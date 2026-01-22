# Tip 15: Eigene Commands erstellen

**Kategorie:** Power-User

## Du kannst Personal AI erweitern

Personal AI ist kein geschlossenes System. Du kannst eigene Commands hinzufügen.

## So geht's

| CLI | Command-Ort | Nutzung |
|-----|-------------|---------|
| Claude Code | `.claude/commands/pai/[name].md` | `/pai:[name]` |
| OpenCode | `.opencode/command/pai-[name].md` | `/pai-[name]` |
| Gemini CLI | In Skills hinzufügen | Natürliche Sprache |

## Beispiel: Rechnung Command

```markdown
# Rechnung - Rechnung erstellen

## Deine Aufgabe

1. Frag nach: Kunde, Leistung, Betrag
2. Lies die Vorlage aus `templates/invoice.md`
3. Fülle die Vorlage aus
4. Speichere unter `documents/invoices/[datum]-[kunde].md`

## ALWAYS
- Nutze die offizielle Vorlage
- Prüfe ob alle Pflichtfelder ausgefüllt sind

## NEVER
- Erfinde keine Steuernummern
- Ändere nicht das Rechnungsformat
```

## Ideen für eigene Commands

- **meeting** - Meeting-Notes erstellen
- **invoice** - Rechnungen generieren
- **social** - Social Media Posts planen
- **weekly-report** - Wochenbericht für Kunden

---

Probier es:

Überleg: Welchen wiederkehrenden Task könntest du als Command automatisieren?

Details: Siehe `EXTENDING.md`
