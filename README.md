# dotfiles

## セットアップ
- AppStoreにサインイン
- 以下のコードをターミナルで実行(途中、コマンドライン・デベロッパー・ツールのインストール確認ダイアログで「インストール」を選択)
```
cd $HOME
git clone https://github.com/keyamin/dotfiles.git
cd dotfiles
./init.sh
```
- Macを再起動

## その他手動で行う設定(と同時にTODOでもある)
### システム環境設定
- デスクトップ画像・ユーザーアイコン編集
- システム環境設定 > Touch IDで指紋登録
- システム環境設定 > キーボード > 入力ソースをGoogle日本語入力に変更
- システム環境設定 > キーボード > ショートカット > Spotlight > Spotlight検索を表示のショートカットをoffにする
- システム環境設定 > セキュリティとプライバシー > 一般　 > スリープとスクリーンセーバーの解除にパスワードを要求を、開始後すぐにする
- システム環境設定 > セキュリティとプライバシー > 一般　 > Apple Watchを使ってアプリケーションとこのMacのロックを解除をonにする
- システム環境設定 > ソフトウェアアップデート > Macを自動的に最新の状態に保つをonにする
### Google Chrome
- 初回起動時、デフォルトブラウザをchromeに設定
- Googleアカウントで同期する
### Alfred
- Genaral > Alfred Hotkeyをcmd + spaceに変更
- Genaral > Where are youをJapanに設定
- Features > 1Password > Enable 1Password Bookmarksをonにする
- Features > Web Boolmarks > Google Chrome Bookmarksをonにする
- Appearance > Alfred Modern Dark
- Appearance > Options > Hide menu bar iconをonにする
- Advanced > Force KeyboardをAlphanumeric(Google)に変更
### 1Password
- 環境設定 > 詳細設定 > Spotlightを有効にして、サードパーティアプリを統合をonにする
