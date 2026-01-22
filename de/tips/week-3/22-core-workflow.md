# Tip 22: Der CORE-Workflow - Nichts geht verloren

**Kategorie:** Advanced

## Das Problem

Du hast `/pai:capture` für schnelle Gedanken. Du hast `/pai:standup` für den Tagesstart.

Aber was passiert mit den Gedanken in der inbox/? Sie sammeln sich an. Du vergisst sie. Oder schlimmer: Du schaust nie wieder rein.

## Die Lösung: CORE

CORE ist ein bewährtes Produktivitäts-Framework:

```
C - Capture    → Gedanken sofort festhalten
O - Organize   → Automatisch durch Dateiname
R - Review     → Standup zeigt Inbox-Status
E - Engage     → Process macht Tasks daraus
```

## So funktioniert es in Personal AI

**1. Capture** - Unterwegs, unter der Dusche, im Meeting:
```
/pai:capture Feature X mit Approach Y testen
```
→ Landet in `inbox/2024-01-15-feature-x.md`

**2. Organize** - Passiert automatisch:
- Dateiname enthält Datum
- Keine Tags, keine Kategorien nötig

**3. Review** - Beim täglichen Standup:
```
/pai:standup

> INBOX (3 offen)
> • Feature X mit Y testen - vor 2 Tagen
> • Kundenfeedback Preis - gestern
> → Verarbeiten mit /pai:process
```

**4. Engage** - Inbox verarbeiten:
```
/pai:process
```

Für jedes Item entscheidest du:
- **heute** → wird Task im Daily
- **morgen** → wird Task für morgen
- **parken** → bleibt in Inbox
- **löschen** → weg damit

## Warum das funktioniert

1. **Dein Kopf ist frei** - Gedanken sind gespeichert, nicht im RAM
2. **Nichts geht verloren** - Standup erinnert dich
3. **Schnelle Entscheidungen** - 4 Optionen, keine Analyse-Paralyse
4. **Single Source of Truth** - Tasks landen im Daily, nicht überall verstreut

## Der Trick

Die Inbox sollte regelmäßig **leer** werden. Nicht weil du alles erledigst, sondern weil du entscheidest:

- Das mache ich heute
- Das mache ich morgen
- Das parke ich (bewusst)
- Das brauche ich nicht mehr

---

**Probier es:**

1. Capture jetzt 3 Gedanken die dir durch den Kopf gehen
2. Mach morgen früh einen Standup
3. Verarbeite die Inbox mit `/pai:process`

```
/pai:capture [Gedanke 1]
/pai:capture [Gedanke 2]
/pai:capture [Gedanke 3]
```
