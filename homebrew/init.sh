# Homebrew
echo "installing Homebrew ..."
which brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "run brew doctor ..."
brew doctor

echo "run brew update ..."
brew update

echo "run brew upgrade ..."
brew upgrade

echo "run brew bundle ..."
brew bundle

echo "run brew cleanup ..."
brew cleanup
