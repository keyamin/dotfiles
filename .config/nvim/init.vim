set number
set tabstop=2
set shiftwidth=2

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
