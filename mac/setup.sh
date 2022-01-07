if [ $(uname) != "Darwin" ] ; then
	echo "Not MacOS!"
	exit 0
fi

# Dock
## Dockからすべてのアプリを消す
defaults write com.apple.dock persistent-apps -array
## Dockのサイズ
defaults write com.apple.dock "tilesize" -int "36"
## 最近起動したアプリを非表示
defaults write com.apple.dock "show-recents" -bool "false"
## アプリをしまうときのアニメーション
defaults write com.apple.dock "mineffect" -string "scale"
## 使用状況に基づいてデスクトップの順番を入れ替え
defaults write com.apple.dock "mru-spaces" -bool "false"

# Screenshot
## 画像の影を無効化
defaults write com.apple.screencapture "disable-shadow" -bool "true"
## 保存場所
if [[ ! -d "$HOME/Pictures/Screenshots" ]]; then
    mkdir -p "$HOME/Pictures/Screenshots"
fi
defaults write com.apple.screencapture "location" -string "~/Pictures/Screenshots"
## 撮影時のサムネイル表示
defaults write com.apple.screencapture "show-thumbnail" -bool "false"
## 保存形式
defaults write com.apple.screencapture "type" -string "jpg"

# Finder
## 拡張子まで表示
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
## 隠しファイルを表示
defaults write com.apple.Finder "AppleShowAllFiles" -bool "true"
## パスバーを表示
defaults write com.apple.finder ShowPathbar -bool "true"
## 未確認ファイルを開くときの警告無効化
defaults write com.apple.LaunchServices LSQuarantine -bool "false"
## ゴミ箱を空にするときの警告無効化
defaults write com.apple.finder WarnOnEmptyTrash -bool "false"

# Feedback
## フィードバックを送信しない
defaults write com.apple.appleseed.FeedbackAssistant "Autogather" -bool "false"
## クラッシュレポート無効化
defaults write com.apple.CrashReporter DialogType -string "none"

# .DS_Store
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool "true"
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool "true"

# Battery
## バッテリーを%表示
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Trackpad
## タップでクリック
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool "true"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool "true"
defaults -currentHost write -g com.apple.mouse.tapBehavior -bool "true"
## 軌跡の速さ
defaults write -g com.apple.trackpad.scaling 3
## スクロールの方向
defaults write -g com.apple.swipescrolldirection -bool "false"

# Mouse
## 軌跡の速さ
defaults write -g com.apple.mouse.scaling 3
## スクロールの速さ
defaults write -g com.apple.scrollwheel.scaling 5

# Keyboard
## キーのリピート速度
defaults write NSGlobalDomain KeyRepeat -int 2
## キーのリピート認識時間
defaults write NSGlobalDomain InitialKeyRepeat -int 15
## フルキーボードアクセスを有効化
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
## 本体キーボードのCapsLockキーの動作をControlにリマップ
keyboard_id="$(ioreg -c AppleEmbeddedKeyboard -r | grep -Eiw "VendorID|ProductID" | awk '{ print $4 }' | paste -s -d'-\n' -)-0"
defaults -currentHost write -g com.apple.keyboard.modifiermapping.${keyboard_id} -array-add "
<dict>
  <key>HIDKeyboardModifierMappingDst</key>\
  <integer>30064771300</integer>\
  <key>HIDKeyboardModifierMappingSrc</key>\
  <integer>30064771129</integer>\
</dict>
"

# Security
## ファイアウォールon
sudo defaults write /Library/Preferences/com.Apple.alf globalstate -int 1

# Others
## GoogleのパブリックDNSを使用する
networksetup -setdnsservers Wi-Fi 2001:4860:4860::8844 2001:4860:4860::8888 8.8.4.4 8.8.8.8
## 自動で頭文字を大文字にしない
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool "false"
## スペルの訂正を無効にする
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool "false"