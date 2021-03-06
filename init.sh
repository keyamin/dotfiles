THIS_DIR=$(cd $(dirname $0); pwd)

for dotfile in .zshrc .zprofile .alias.zsh .gitconfig .gitignore .tmux.conf .vimrc; do
	ln -snfv "${THIS_DIR}/$dotfile" "$HOME/$dotfile"
done

mkdir -p $HOME/.config/nvim
ln -snfv "${THIS_DIR}/.config/starship.toml" "$HOME/.config/starship.toml"
ln -snfv "${THIS_DIR}/.vimrc" "$HOME/.config/nvim/init.vim"

# Homebrew
cd $THIS_DIR/homebrew
./setup.sh
cd $THIS_DIR

# tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
if [[ ! -f "$ZINIT_HOME/zinit.zsh" ]]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# asdf
ln -snfv "$(pwd)/.tool-versions" "$HOME/.tool-versions"
ln -snfv "$(pwd)/.asdfrc" "$HOME/.asdfrc"
for plugin in nodejs terraform awscli pulumi python eksctl;do
	asdf plugin add "$plugin"
done
asdf install

# Rust
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh

# VSCode
./vscode/setup.sh

# Mac Setup
./mac/setup.sh