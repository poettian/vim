set runtimepath=~/.vim,/usr/local/Cellar/vim/8.0.0647/share/vim/vim80,~/.vim/after
let $VIMRUNTIME="/usr/local/Cellar/vim/8.0.0647/share/vim/vim80"
set backspace=indent,eol,start
set backupcopy=yes

" ====缩进设置方案
set tabstop=4
set expandtab
set noignorecase
set shiftwidth=4
set softtabstop=4
set autoindent
" ====

filetype plugin on

" ====设置颜色方案
syntax on
colorscheme molokai
hi Comment ctermfg=darkcyan ctermbg=None cterm=None
" =====

" ====编码设置
" 设置 Vim 内部使用的字符编码
set encoding=utf8
" Vim 在与屏幕/键盘交互时使用的编码
let &termencoding=&encoding
" Vim 当前编辑的文件在存储时的编码
set fileencodings=utf-8,gbk,ucs-bom,cp936
" ====

" 显示行号
set nu
" 插入括号时，短暂地跳转到匹配的对应括号
set showmatch


" 设置标尺，在屏幕右下方显示光标的位置
set ruler
" 设置查询字符高亮
set hlsearch
" 设置查询字符时输入即高亮匹配
set incsearch
" 标尺的右边显示未完成的命令
set showcmd

set si
" 当前窗口使用的折叠方式(语法高亮项目指定折叠)
set foldmethod=syntax
" 不在单词中间断行。设置了这个选项后，如果一行文字非常长，无法在一行内显示完的话，
" 它会在单词与单词间的空白处断开，尽量不会把一个单词分成两截放在两个不同的行里。
set lbr

" 设置下方状态栏
set laststatus=2
set statusline=\ %F%m%r%h\ %w\ \ Line:\ %l/%L:%c

let php_baselib = 1
let php_htmlInStrings = 1
let php_noShortTags = 1
let php_folding = 0
source ~/.vim/php-doc.vim
:imap <C-D> <ESC>:call PhpDocSingle()<CR>i
:nmap <C-D> :call PhpDocSingle()<CR>
:vmap <C-D> :call PhpDocRange()<CR>
set formatoptions=qroct
autocmd BufWritePost *.php !php -d display_errors=on -l <afile>
autocmd BufWritePost *.inc !php -d display_errors=on -l <afile>

map <F5> <Esc>:EnableFastPHPFolds<Cr>
map <F6> <Esc>:EnablePHPFolds<Cr>
map <F7> <Esc>:DisablePHPFolds<Cr>
