set number
set history=200
set tabstop=2
set shiftwidth=2
set clipboard+=unnamed
set hlsearch
set incsearch
set ignorecase
set visualbell

" leaderをスペースへ設定
let mapleader = "\<Space>"

" 保存
nnoremap <Leader>w :w<CR>

" 終了
nnoremap <Leader>q :q<CR>

" ヤンクしたものを貼り付け
nnoremap <Leader>p "0p
nnoremap <Leader>P "0P

" ハイライト解除
nnoremap <ESC><ESC> :nohl<CR>

" ノーマルモードに戻る
inoremap <silent> jj <ESC>

" インサートモードではEmacs形式でカーソル移動
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-p> <Up>
inoremap <C-n> <Down>

" マウス操作有効化
set mouse=a

" コマンド履歴移動
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>