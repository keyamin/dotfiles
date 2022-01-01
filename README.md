# dotfiles

## セットアップ

- AppStore にサインイン
- 以下のコードをターミナルで実行

```sh
cd $HOME
xcode-select --install
git clone https://github.com/keyamin/dotfiles.git
cd dotfiles
./init.sh
```

- Mac を再起動

## その他手動で行う設定(と同時に TODO でもある)

### システム環境設定

- デスクトップ画像・ユーザーアイコン編集
- システム環境設定 > Touch ID で指紋登録
- システム環境設定 > キーボード > 入力ソースを Google 日本語入力に変更
- システム環境設定 > キーボード > ショートカット > Spotlight > Spotlight 検索を表示のショートカットを off にする
- システム環境設定 > キーホード > ショートカット > Mission Control > デスクトップ n へ切り替えを on にする
- システム環境設定 > セキュリティとプライバシー > 一般 > スリープとスクリーンセーバーの解除にパスワードを要求を、開始後すぐにする
- システム環境設定 > セキュリティとプライバシー > 一般 > Apple Watch を使ってアプリケーションとこの Mac のロックを解除を on にする
- システム環境設定 > ソフトウェアアップデート > Mac を自動的に最新の状態に保つを on にする
- システム環境設定 > Bluetooth でマウスとキーボードとイヤホンを登録する
- システム環境設定 > バッテリー > バッテリー > ディスプレイをオフにするを 15 分に設定
- システム環境設定 > バッテリー > 電源アダプタ > ディスプレイをオフにするを 15 分に設定
- システム環境設定 > ディスプレイ > メインディスプレイを適宜変更

### Google Chrome

- 初回起動時、デフォルトブラウザを chrome に設定
- Google アカウントで同期する
- [英かなをインストール](https://ei-kana.appspot.com/)し、設定で「メニューバーにアイコンを表示」を off にする

### Alfred

- General > Alfred Hotkey を cmd + space に変更
- General > Where are you を Japan に設定
- Features > 1Password > Enable 1Password Bookmarks を on にする
- Features > Web Bookmarks > Google Chrome Bookmarks を on にする
- Appearance > Alfred Modern Dark
- Appearance > Options > Hide menu bar icon を on にする
- Advanced > Force Keyboard を Alphanumeric(Google)に変更

### 1Password

- 環境設定 > 詳細設定 > Spotlight を有効にして、サードパーティアプリを統合を on にする

### iTerm2

- Preferences > General > Preferences > Load preferences from a custom folder or URL を on にし、設定ファイルがあるフォルダを選択する
- その下の Save changes を Automatically に設定

### VSCode

- GitHub アカウントで認可
- go のツールのインストールを求められたら、Install All でインストールする
