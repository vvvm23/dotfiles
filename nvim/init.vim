filetype on
runtime plugins.vim

set termguicolors
set t_Co=256
hi Normal guibg=NONE ctermbg=NONE
highlight LineNr ctermfg=NONE ctermbg=NONE
highlight clear CursorLineNR
highlight clear LineNR
syntax on

function! s:tweak_colors()
        set termguicolors
        set t_Co=256
        hi Normal guibg=NONE ctermbg=NONE
        highlight LineNr ctermfg=NONE ctermbg=NONE
        highlight clear CursorLineNR
        highlight clear LineNR
        syntax on
endfunction

autocmd! ColorScheme nord call s:tweak_colors()
colorscheme nord
hi Normal guibg=NONE ctermbg=NONE

set nocompatible
set encoding=utf-8

set expandtab
"set tabstop=4
"set softtabstop=4
"set shiftwidth=4

set scrolloff=999

set timeoutlen=1000 ttimeoutlen=10

set number
set relativenumber

set undofile
set clipboard=unnamedplus

set nohlsearch
set ignorecase

autocmd BufReadPre *.txt,*.md,*.text setlocal spell

set dictionary=/usr/share/dict/british

runtime binds.vim
