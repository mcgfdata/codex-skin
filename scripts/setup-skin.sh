#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
THEME="salary-cat"
PORT="9335"
DESKTOP_DIR="$HOME/Desktop"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --theme) THEME="$2"; shift 2 ;;
    --port) PORT="$2"; shift 2 ;;
    *) echo "Unknown argument: $1" >&2; exit 2 ;;
  esac
done

"$SCRIPT_DIR/install-skin.sh" --theme "$THEME" --port "$PORT"

mkdir -p "$DESKTOP_DIR"
printf '#!/bin/bash\nexec %q --theme %q --port %q\n' \
  "$SCRIPT_DIR/start-skin.sh" "$THEME" "$PORT" > "$DESKTOP_DIR/Codex Skin.command"
printf '#!/bin/bash\nexec %q --theme %q --port %q\n' \
  "$SCRIPT_DIR/restart-skin.sh" "$THEME" "$PORT" > "$DESKTOP_DIR/Codex Skin - Restart.command"
printf '#!/bin/bash\nexec %q --port %q\n' \
  "$SCRIPT_DIR/restore-skin.sh" "$PORT" > "$DESKTOP_DIR/Codex Skin - Restore.command"

chmod +x \
  "$DESKTOP_DIR/Codex Skin.command" \
  "$DESKTOP_DIR/Codex Skin - Restart.command" \
  "$DESKTOP_DIR/Codex Skin - Restore.command"

echo "Codex Skin setup complete."
echo "Desktop launchers:"
echo "  $DESKTOP_DIR/Codex Skin.command"
echo "  $DESKTOP_DIR/Codex Skin - Restart.command"
echo "  $DESKTOP_DIR/Codex Skin - Restore.command"
echo "Double-click 'Codex Skin - Restart.command' after saving your current Codex work."
