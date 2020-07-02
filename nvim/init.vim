call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/seoul256.vim'
Plug 'itchyny/lightline.vim'
"Plug 'sirver/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/goyo.vim'
Plug 'lervag/vimtex'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'danilamihailov/beacon.nvim'
Plug 'psliwka/vim-smoothie'
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
set background=dark
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

" vim timeout
set timeoutlen=1000 ttimeoutlen=10

" line numbers
set number
set relativenumber

" lightline
set laststatus=2

" nerdtree options
map <C-o> :NERDTreeToggle<CR>

" autopair config
let g:AutoPairsFlyMode = 1 
filetype plugin indent on

" rebind window movement
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap <C-k> <C-W>k
nnoremap <C-j> <C-W>j

" Map Goyo
map <C-g> :Goyo<CR>

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

" autofold
set foldmethod=syntax
set nofoldenable

" coc settings
set updatetime=300

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" beacon settings
let g:beacon_minimal_jump = 10
