# Tip 5: Research mit Kontext

**Kategorie:** Basics

## Warum Personal AI-Research anders ist

Wenn du `/pai:research` nutzt, recherchiert Personal AI nicht blind.

Personal AI kennt:
- Deine Ziele (aus `goals/`)
- Deine bisherigen Entscheidungen (aus `knowledge/decisions/`)
- Deinen Kontext (aus CLAUDE.md)

Das bedeutet: Die Recherche ist **auf dich zugeschnitten**.

## Beispiel

```
/pai:research Welches CRM passt zu mir?
```

Statt generischer CRM-Listen bekommst du:
- Empfehlungen basierend auf deiner Unternehmensgröße
- Filterung nach deinem Budget
- Fokus auf Features die zu deinen Zielen passen

## Output

Personal AI liefert:
1. Zusammenfassung (1 Absatz)
2. Top 3 Optionen mit Pro/Contra
3. Empfehlung für DICH
4. Nächste Schritte

---

🎯 **Probier es:**

Was wolltest du schon lange mal recherchieren?
```
/pai:research [dein Thema]
```
