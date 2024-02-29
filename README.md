# dotfiles(for AppleSilicon Mac)

## セットアップ

- AppStore にサインイン
- 以下のコードをターミナルで実行

```sh
$ cd
$ xcode-select --install
$ git clone https://github.com/keyamin/dotfiles.git
$ ./dotfiles/init.sh
```

## `init.sh`がやること

- Rosetta2 をインストールする
- 各設定ファイルのシンボリックリンクを作る
- `Brewfile`で`brew bundle`する
- .mise.toml で指定したものをインストールする
- poetry をインストールする

## 手動インストールが必要なアプリ

- [VSCode Insiders](https://code.visualstudio.com/insiders/)
- [Session Manager Plugin](https://docs.aws.amazon.com/ja_jp/systems-manager/latest/userguide/install-plugin-macos-overview.html)
- [英かな](https://ei-kana.appspot.com/)
- Universal Audio 関連のセットアップと手動ダウンロード
  - <https://help.uaudio.com/hc/en-us/articles/360057137692-Apple-Silicon-M1-M2-and-M3-Compatibility-with-Universal-Audio-Devices>
