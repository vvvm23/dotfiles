call plug#begin('~/.config/nvim/plugged')
Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'rlue/vim-barbaric'
Plug 'lervag/vimtex'
Plug 'Yazeed1s/minimal.nvim'
Plug 'shaunsingh/seoul256.nvim'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'junegunn/goyo.vim'
Plug 'shaunsingh/nord.nvim'
Plug 'psliwka/vim-smoothie'
call plug#end()

let g:jedi#completions_enabled = 0
let g:deoplete#enable_at_startup = 1

let g:vimtex_view_general_viewer = 'zathura'

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_clear_cache_on_exit = 0

let g:barbaric_ime = 'fcitx'
