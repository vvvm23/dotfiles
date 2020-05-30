call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/seoul256.vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-python/python-syntax'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'yggdroot/indentline'
Plug 'luochen1990/rainbow'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'valloric/youcompleteme'
Plug 'lervag/vimtex'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
call plug#end()

" Enable 24 bit colors
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set t_Co=256

" Colorscheme
function! s:reload_colors()
    hi Normal guibg=NONE ctermbg=NONE
    hi LineNr ctermfg=NONE ctermbg=NONE
    hi clear CursorLineNR
    hi clear LineNR
"hi FoldColumn ...
endfunction

autocmd! ColorScheme seoul256 call s:reload_colors()
syntax on
"let g:seoul256_background=233
set background=dark
"colorscheme Atelier_DuneDark  
colorscheme seoul256
hi Normal guibg=NONE ctermbg=NONE
highlight LineNr ctermfg=NONE ctermbg=NONE
highlight clear CursorLineNR
highlight clear LineNR
let g:seoul256_srgb = 1

" Set character encoding
set nocompatible
set encoding=utf-8

" indent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" scrolloff
set scrolloff=999

" Fix conflicts between YCM and UtliSnips
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=0
let g:tex_conceal='abdmg'
let g:vimtex_imaps_leader='`'
if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

" disable scratch preview
set completeopt-=preview

" vim timeout
set timeoutlen=1000 ttimeoutlen=10

" line numbers
set number
set relativenumber

" nerdtree options
map <C-o> :NERDTreeToggle<CR>

" lightline options
set laststatus=2

" rainbow config
let g:rainbow_active=1

" python-syntax
let g:python_highlight_all = 1
let g:python_highlight_indent_errors=0
let g:python_highlight_space_errors=0

" autopair config
let g:AutoPairsFlyMode = 1
filetype plugin indent on

" rebind window movement
nnoremap <C-Left> <C-W><Left>
nnoremap <C-Right> <C-W><Right>
nnoremap <C-Up> <C-W><Up>
nnoremap <C-Down> <C-W><Down>

" Map Goyo
map <C-g> :Goyo<CR>

" Limelight
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_guifg = 'DarkGray'

" set to system clipboard
set clipboard=unnamedplus
"map <C-c> :"+y

" fix last spelling error
imap <c-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" disable hlsearch
set nohlsearch

" map find and replace
" overwrites replace line?
nmap S :%s/
