" Author: Illia Piskurov
" Requirements:
" 1. Vim-Plug
" 2. Nerd Font

call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

call plug#end()

"----------------------------------------------
"               Plugin Config

" --Color Scheme--
":colorscheme gruvbox
:colorscheme palenight

" --NerdTree--
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" --Vim Airline--
let g:airline_powerline_fonts = 1
let g:airline_theme='wombat'

" --Bufferline--
set termguicolors
lua << EOF
require("bufferline").setup{}
EOF

"----------------------------------------------

"----------------------------------------------
"                Nvim Config

:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set encoding=UTF-8

" --Font--
"set guifont=Cascadia\ Code:h11
set guifont=CaskaydiaCove\ NF\ Mono:h12

" --Neovide Transparency--
let g:neovide_transparency=0.7

"----------------------------------------------