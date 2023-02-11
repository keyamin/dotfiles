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

- Rosetta2をインストールする
- `dotfiles`内のファイルと`.gitignore_global`のシンボリックリンクを作る
- `Brewfile`で`brew bundle`する
- asdfのプラグインと各バージョンをインストールする
