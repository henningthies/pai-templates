#!/bin/bash
# Personal AI Session Start Hook
# - Personalized greeting
# - Setup check
# - Standup prompt (first session of day)
# - Tip of the day

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PAI_ROOT="$(dirname "$(dirname "$SCRIPT_DIR")")"

CLAUDE_MD="$PAI_ROOT/CLAUDE.md"
TIPS_DIR="$PAI_ROOT/tips"
PROGRESS_FILE="$PAI_ROOT/progress/tips.md"

# ============================================
# 1. GET USER NAME FROM CLAUDE.md
# ============================================

get_user_name() {
    if [[ -f "$CLAUDE_MD" ]]; then
        # Try to extract name from "**Name:** XYZ" pattern
        local name=$(grep -oP '\*\*Name:\*\*\s*\K[^\n\[]+' "$CLAUDE_MD" 2>/dev/null | head -1 | xargs)
        if [[ -n "$name" && ! "$name" =~ \[.*\] ]]; then
            echo "$name"
            return
        fi
    fi
    echo ""
}

# ============================================
# 2. TIME-BASED GREETING
# ============================================

get_greeting() {
    local hour=$(date +%H)
    local name=$(get_user_name)
    local greeting=""

    if [[ $hour -ge 5 && $hour -lt 12 ]]; then
        greeting="Guten Morgen"
    elif [[ $hour -ge 12 && $hour -lt 17 ]]; then
        greeting="Guten Tag"
    elif [[ $hour -ge 17 && $hour -lt 22 ]]; then
        greeting="Guten Abend"
    else
        greeting="Hallo"
    fi

    if [[ -n "$name" ]]; then
        echo "$greeting, $name!"
    else
        echo "$greeting!"
    fi
}

# ============================================
# 3. CHECK IF SETUP IS COMPLETE
# ============================================

check_setup() {
    if [[ -f "$CLAUDE_MD" ]]; then
        if grep -qE '\[.*\.\.\.\]|\[Dein.*\]|\[dein.*\]|\[z\.B\.' "$CLAUDE_MD"; then
            return 1
        fi
    else
        return 1
    fi
    return 0
}

# ============================================
# 4. CHECK IF STANDUP DONE TODAY
# ============================================

check_standup() {
    local today=$(date +%Y-%m-%d)
    local daily_file="$PAI_ROOT/daily/$today.md"

    if [[ -f "$daily_file" ]]; then
        return 0  # Standup exists
    fi
    return 1  # No standup yet
}

# ============================================
# 5. GET CURRENT TIP NUMBER
# ============================================

get_current_tip() {
    if [[ -f "$PROGRESS_FILE" ]]; then
        local tip_num=$(grep -oP 'Aktueller Tip:\s*\K\d+' "$PROGRESS_FILE" 2>/dev/null || echo "0")
        echo "$tip_num"
    else
        echo "0"
    fi
}

# ============================================
# 6. GET TIP TITLE
# ============================================

get_tip_title() {
    local current_tip=$(get_current_tip)
    local next_tip=$((current_tip + 1))

    if [[ $next_tip -gt 21 ]]; then
        echo ""
        return
    fi

    local week=1
    local tip_in_week=$next_tip

    if [[ $next_tip -gt 14 ]]; then
        week=3
        tip_in_week=$((next_tip - 14))
    elif [[ $next_tip -gt 7 ]]; then
        week=2
        tip_in_week=$((next_tip - 7))
    fi

    local tip_file=$(printf "%02d" $tip_in_week)
    local tip_path="$TIPS_DIR/week-$week/"
    local found_tip=$(find "$tip_path" -name "${tip_file}-*.md" 2>/dev/null | head -1)

    if [[ -n "$found_tip" && -f "$found_tip" ]]; then
        head -1 "$found_tip" | sed 's/^# //'
    fi
}

# ============================================
# MAIN OUTPUT
# ============================================

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🤖 Personal AI"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "$(get_greeting)"
echo ""

# Check setup status
if ! check_setup; then
    echo "🔧 SETUP ERFORDERLICH"
    echo "CLAUDE.md enthält noch Platzhalter."
    echo ""
    echo "[AKTION FÜR CLAUDE: Biete an, /pai:setup zu starten]"
    echo ""
else
    # Check standup
    if ! check_standup; then
        echo "📋 STANDUP HEUTE: Noch nicht gemacht"
        echo ""
        echo "[AKTION FÜR CLAUDE: Frage ob wir jetzt einen kurzen Standup machen wollen]"
        echo ""
    else
        echo "✅ Standup heute: Erledigt"
        echo ""
    fi

    # Show tip
    tip_num=$(($(get_current_tip) + 1))
    tip_title=$(get_tip_title)

    if [[ -n "$tip_title" && $tip_num -le 21 ]]; then
        echo "💡 Tip #$tip_num/21: $tip_title"
        echo "   → /pai:tip für Details"
        echo ""
    fi
fi

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "[INSTRUKTION: Begrüße den User basierend auf obigen Infos und handle die markierten AKTIONEN]"
