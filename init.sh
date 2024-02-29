#!/bin/bash
THIS_DIR=$(cd "$(dirname $0)" || exit; pwd)

# rosetta
sudo softwareupdate --install-rosetta --agree-to-license

# dotfiles
for dotfile in "${THIS_DIR}"/dotfiles/*; do
	ln -snfv "${THIS_DIR}/dotfiles/$dotfile" "$HOME/$dotfile"
done

# .gitignore
mkdir -p $HOME/.config/git
ln -snfv "${THIS_DIR}/.gitignore_global" "$HOME/.config/git/ignore"

# .vimrc
mkdir -p $HOME/.config/nvim
ln -snfv "${THIS_DIR}/dotfiles/.vimrc" "$HOME/.config/nvim/init.vim"

# .mise.toml
mkdir -p $HOME/.config/mise
ln -snfv "${THIS_DIR}/.mise.toml" "$HOME/.config/mise/config.toml"

# poetry.toml
mkdir -p $HOME/Library/Application\ Support/pypoetry
ln -snfv "${THIS_DIR}/poetry.toml" ${HOME}/Library/Application\ Support/pypoetry/config.toml

# Homebrew
if ! (type "brew" >/dev/null 2>&1); then
    echo "installing Homebrew ..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo "run brew doctor ..."
brew doctor

echo "run brew update ..."
brew update

echo "run brew upgrade ..."
brew upgrade

echo "run brew bundle ..."
brew bundle --file=${THIS_DIR}/Brewfile

echo "run brew cleanup ..."
brew cleanup

# mise
cd ${THIS_DIR}/dotfiles && mise install && cd ${THIS_DIR} || exit

# poetry
pipx install poetry
