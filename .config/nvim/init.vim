set number
set history=200
set tabstop=2
set shiftwidth=2
set clipboard+=unnamed

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

" マウス操作有効化
set mouse=a

" コマンド履歴移動
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" コロンとセミコロン入れ替え
nnoremap ; :
nnoremap : ;
vnoremap : :
vnoremap : ;
