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

## 手動インストールが必要なもの

- [VSCode Insiders](https://code.visualstudio.com/insiders/)
- [Session Manager Plugin](https://docs.aws.amazon.com/ja_jp/systems-manager/latest/userguide/install-plugin-macos-overview.html)
- [英かな](https://ei-kana.appspot.com/)
