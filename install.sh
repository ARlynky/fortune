#!/bin/bash
set -e

REPO_URL="https://github.com/ARlynky/fortune.git"
INSTALL_DIR="$HOME/.local/share/fortune"
BIN_DIR="$HOME/.local/bin"

mkdir -p "$INSTALL_DIR"
mkdir -p "$BIN_DIR"

if [ -d "$INSTALL_DIR/.git" ]; then
  echo "[*] Updating existing fortune install..."
  git -C "$INSTALL_DIR" pull
else
  echo "[*] Cloning fortune project..."
  git clone "$REPO_URL" "$INSTALL_DIR"
fi

cat >"$BIN_DIR/fortune" <<EOF
#!/bin/bash
cd "$INSTALL_DIR"
python3 fortune.py "\$@"
EOF
chmod +x "$BIN_DIR/fortune"

echo "[✓] fortune installed!"
echo "Make sure \$HOME/.local/bin is in your PATH."
echo "Try running: fortune"
