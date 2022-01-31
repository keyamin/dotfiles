THIS_DIR=$(cd $(dirname $0); pwd)

for dotfile in .zshrc .zprofile .alias.zsh .gitconfig .gitignore; do
	ln -snfv "$(pwd)/$dotfile" "$HOME/$dotfile"
done

mkdir -p $HOME/.config/nvim
ln -snfv "$(pwd)/.config/starship.toml" "$HOME/.config/starship.toml"
ln -snfv "$(pwd)/.config/nvim/init.vim" "$HOME/.config/nvim/init.vim"

# Homebrew
cd $THIS_DIR/homebrew
./setup.sh
cd $THIS_DIR

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

# VSCode
cd $THIS_DIR/vscode
./setup.sh
cd $THIS_DIR

# Mac Setup
cd $THIS_DIR/mac
./setup.sh
cd $THIS_DIR