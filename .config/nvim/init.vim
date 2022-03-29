set number

" jjで保存しつつノーマルモードに戻る
inoremap <silent> jj <ESC>:<C-u>w<CR>

" マウス操作有効化
set mouse=a

" ターミナルをEscで抜けられるようにする
:tnoremap <Esc> <C-\><C-n>

" ターミナルの大きさをVSCodeライクに
command! -nargs=* T split | wincmd j | resize 15 | terminal <args>

" ターミナルを起動するとインサートモードにする
autocmd TermOpen * startinsert
