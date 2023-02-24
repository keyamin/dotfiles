THIS_DIR=$(cd $(dirname $0); pwd)

# rosetta
sudo softwareupdate --install-rosetta --agree-to-license

# dotfiles
for dotfile in $(ls -a ${THIS_DIR}/dotfiles | grep -v ".??*"); do
	ln -snfv "${THIS_DIR}/dotfiles/$dotfile" "$HOME/$dotfile"
done

# .gitignore
mkdir -p $HOME/.config/git
ln -snfv "${THIS_DIR}/.gitignore_global" "$HOME/.config/git/ignore"

# .vimrc
mkdir -p $HOME/.config/nvim
ln -snfv "${THIS_DIR}/dotfiles/.vimrc" "$HOME/.config/nvim/init.vim"

# Homebrew
if !(type "brew" >/dev/null 2>&1); then
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

# asdf
for plugin in $(cat ${THIS_DIR}/dotfiles/.tool-versions | awk '{print $1}');do
	asdf plugin add "$plugin"
done
cd ${THIS_DIR}/dotfiles && asdf install && cd ${THIS_DIR}
