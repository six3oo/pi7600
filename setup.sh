#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "[*] Creating pi7600-venv as root..."
sudo python3 -m venv pi7600-venv

echo "[*] Installing requirements as root..."
sudo pi7600-venv/bin/pip install --upgrade pip --quiet
sudo pi7600-venv/bin/pip install -r requirements.txt

echo "[+] Setup complete."
echo "[+] User : $(whoami)"
echo "[+] Dir  : $(pwd)"
