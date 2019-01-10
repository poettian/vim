filetype plugin on

" ====缩进设置方案
set tabstop=4
set expandtab
set noignorecase
set shiftwidth=4
set softtabstop=4
set autoindent
set si "自动缩进
" ====

" 退格键设置
set backspace=indent,eol,start

" ====设置颜色方案
syntax on
colorscheme molokai
" =====

" ====断行设置
set lbr
" =====

" ==== php 快速注释设置
:imap <C-D> <ESC>:call PhpDocSingle()<CR>i
:nmap <C-D> :call PhpDocSingle()<CR>
:vmap <C-D> :call PhpDocRange()<CR>
" =====

" ==== php 自动折叠设置
let g:DisableAutoPHPFolding = 1

map <F5> <Esc>:EnableFastPHPFolds<Cr>
map <F6> <Esc>:EnablePHPFolds<Cr>
map <F7> <Esc>:DisablePHPFolds<Cr>
" =====
