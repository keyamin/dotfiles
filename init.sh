THIS_DIR=$(cd $(dirname $0); pwd)

for dotfile in .zshrc .fzf.zsh alias.zsh .gitconfig; do
	ln -snfv "$(pwd)/$dotfile" "$HOME/$dotfile"
done

mkdir -p $HOME/.config/nvim
ln -snfv "$(pwd)/.config/starship.toml" "$HOME/.config/starship.toml"
ln -snfv "$(pwd)/.config/nvim/init.vim" "$HOME/.config/nvim/init.vim"

# Homebrew
cd $THIS_DIR/homebrew
./init.sh
cd $THIS_DIR

# install zinit
sh -c "$(curl -fsSL https://git.io/zinit-install)"

# asdf plugin
asdf plugin add nodejs

# VSCode
cd $THIS_DIR/vscode
./sync.sh
cd $THIS_DIR

bat ~/.zshrc

