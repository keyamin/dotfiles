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
- `dotfiles`内のファイルと`.gitignore_global`のシンボリックリンクを作る
- `Brewfile`で`brew bundle`する
- asdf のプラグインと各バージョンをインストールする

## 手動インストールが必要なアプリ

- [英かな](https://ei-kana.appspot.com/)
- [homerow](https://www.homerow.app/)
  - homebrew に追加予定([issue](https://github.com/dexterleng/homerow/issues/29))
