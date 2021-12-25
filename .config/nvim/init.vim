" jjでノーマルモードに戻る
inoremap <silent> jj <ESC>:<C-u>w<CR>:

" macデフォルトの操作設定に合わせる
inoremap <C-h> <BS>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-p> <UP>
inoremap <C-n> <Down>

" マウス操作有効化
set mouse=a

" ターミナルをEscで抜けられるようにする
:tnoremap <Esc> <C-\><C-n>

" ターミナルの大きさをVSCodeライクに
command! -nargs=* T split | wincmd j | resize 15 | terminal <args>

" ターミナルを起動するとインサートモードにする
autocmd TermOpen * startinsert
