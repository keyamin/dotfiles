# Homebrew
if !(type "brew" >/dev/null 2>&1); then
    echo "installing Homebrew ..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# for AppleSilicon
# 2021/12/30現在、microsoft-teams,google-japanese-ime,logitech-options,SparkのインストールにRosetta2が必要
sudo softwareupdate --install-rosetta

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
