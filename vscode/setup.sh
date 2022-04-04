THIS_DIR=$(cd $(dirname $0) && pwd)
VSCODE_SETTING_DIR=~/Library/Application\ Support/Code/User

if [ ! -d "$VSCODE_SETTING_DIR" ]; then
  mkdir -p "$VSCODE_SETTING_DIR"
fi

ln -snfv "${THIS_DIR}/settings.json" "${VSCODE_SETTING_DIR}/settings.json"

ln -snfv "${THIS_DIR}/keybindings.json" "${VSCODE_SETTING_DIR}/keybindings.json"

if [ -x "$(command -v code)" ]; then
  cat < "${THIS_DIR}/extensions" | while read -r line

  do
    code --install-extension "$line"
  done

  code --list-extensions > "${THIS_DIR}/extensions"
else
  echo "VSCode is not installed."
fi
