#!/bin/bash

# ─────────────────────────────────────────────
# 🧠 ADHDeveloper Toolkit — Install Script
# Built for brains that work differently
# ─────────────────────────────────────────────

set -e

PURPLE='\033[0;35m'
CYAN='\033[0;36m'
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
RESET='\033[0m'
BOLD='\033[1m'

INSTALL_DIR="$HOME/adhddeveloper-toolkit"

echo ""
echo -e "${PURPLE}${BOLD}"
echo "  🧠 ADHDeveloper Toolkit"
echo "  ─────────────────────────────────────"
echo "  The toolkit that speaks your language"
echo "  — not computer's."
echo -e "${RESET}"
echo ""

# ── Check Python ──────────────────────────────
echo -e "${CYAN}→ Checking Python...${RESET}"
if ! command -v python3 &> /dev/null; then
    echo -e "${RED}✗ Python 3 not found.${RESET}"
    echo "  Please install Python 3 from https://python.org and try again."
    exit 1
fi
echo -e "${GREEN}✓ Python 3 found${RESET}"

# ── Check pip ─────────────────────────────────
echo -e "${CYAN}→ Checking pip...${RESET}"
if ! command -v pip3 &> /dev/null; then
    echo -e "${RED}✗ pip3 not found.${RESET}"
    echo "  Please install pip and try again."
    exit 1
fi
echo -e "${GREEN}✓ pip found${RESET}"

# ── Check git ─────────────────────────────────
echo -e "${CYAN}→ Checking git...${RESET}"
if ! command -v git &> /dev/null; then
    echo -e "${RED}✗ git not found.${RESET}"
    echo "  Please install git and try again."
    exit 1
fi
echo -e "${GREEN}✓ git found${RESET}"
echo ""

# ── Create install directory ──────────────────
echo -e "${CYAN}→ Setting up install directory...${RESET}"
mkdir -p "$INSTALL_DIR"
echo -e "${GREEN}✓ Directory ready: $INSTALL_DIR${RESET}"
echo ""

# ── Clone tools ───────────────────────────────
echo -e "${CYAN}→ Installing GitSpeak...${RESET}"
if [ -d "$INSTALL_DIR/gitspeak" ]; then
    echo -e "${YELLOW}  Already installed — updating...${RESET}"
    git -C "$INSTALL_DIR/gitspeak" pull --rebase origin main
else
    git clone https://github.com/phoenixsoftwebbrighton/gitspeak.git "$INSTALL_DIR/gitspeak"
fi
echo -e "${GREEN}✓ GitSpeak installed${RESET}"
echo ""

echo -e "${CYAN}→ Installing Decipher...${RESET}"
if [ -d "$INSTALL_DIR/decipher" ]; then
    echo -e "${YELLOW}  Already installed — updating...${RESET}"
    git -C "$INSTALL_DIR/decipher" pull --rebase origin main
else
    git clone https://github.com/phoenixsoftwebbrighton/decipher.git "$INSTALL_DIR/decipher"
fi
echo -e "${GREEN}✓ Decipher installed${RESET}"
echo ""

echo -e "${CYAN}→ Installing ansible-forge...${RESET}"
if [ -d "$INSTALL_DIR/ansible-forge" ]; then
    echo -e "${YELLOW}  Already installed — updating...${RESET}"
    git -C "$INSTALL_DIR/ansible-forge" pull --rebase origin main
else
    git clone https://github.com/phoenixsoftwebbrighton/ansible-forge.git "$INSTALL_DIR/ansible-forge"
fi
echo -e "${GREEN}✓ ansible-forge installed${RESET}"
echo ""

# ── Install dependencies ──────────────────────
echo -e "${CYAN}→ Installing dependencies...${RESET}"
if [[ "$OSTYPE" == "darwin"* ]]; then
    pip3 install rich --quiet
else
    pip3 install rich --quiet --break-system-packages 2>/dev/null || \
    pip3 install rich --quiet
fi
echo -e "${GREEN}✓ Dependencies installed${RESET}"
echo ""

# ── Add aliases ───────────────────────────────
echo -e "${CYAN}→ Setting up aliases...${RESET}"

SHELL_RC=""
if [ -f "$HOME/.zshrc" ]; then
    SHELL_RC="$HOME/.zshrc"
elif [ -f "$HOME/.bashrc" ]; then
    SHELL_RC="$HOME/.bashrc"
else
    SHELL_RC="$HOME/.bashrc"
    touch "$SHELL_RC"
fi

# Remove old aliases if they exist
sed -i.bak '/# ADHDeveloper Toolkit/d' "$SHELL_RC"
sed -i.bak '/alias gs=/d' "$SHELL_RC"
sed -i.bak '/alias decipher=/d' "$SHELL_RC"
sed -i.bak '/alias forge=/d' "$SHELL_RC"

# Add fresh aliases
echo "" >> "$SHELL_RC"
echo "# ADHDeveloper Toolkit" >> "$SHELL_RC"
echo "alias gs=\"python3 $INSTALL_DIR/gitspeak/gitspeak.py\"" >> "$SHELL_RC"
echo "alias decipher=\"python3 $INSTALL_DIR/decipher/decipher.py\"" >> "$SHELL_RC"
echo "alias forge=\"python3 $INSTALL_DIR/ansible-forge/ansible-forge.py\"" >> "$SHELL_RC"

echo -e "${GREEN}✓ Aliases added to $SHELL_RC${RESET}"
echo ""

# ── Done ──────────────────────────────────────
echo -e "${PURPLE}${BOLD}"
echo "  ✅ ADHDeveloper Toolkit installed!"
echo "  ─────────────────────────────────────"
echo -e "${RESET}"
echo -e "  Reload your shell to start using the toolkit:"
echo ""
echo -e "  ${CYAN}source $SHELL_RC${RESET}"
echo ""
echo -e "  Then try:"
echo -e "  ${GREEN}gs${RESET}        — GitSpeak (git in plain English)"
echo -e "  ${YELLOW}decipher${RESET}  — Decipher (errors in plain English)"
echo -e "  ${PURPLE}forge${RESET}     — ansible-forge (infrastructure made easy)"
echo ""
echo -e "  ${PURPLE}Built for brains that work differently. 🧠${RESET}"
echo ""