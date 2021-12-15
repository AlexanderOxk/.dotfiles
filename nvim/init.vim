syntax on

set encoding=UTF-8
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set colorcolumn=100
set signcolumn=yes
set completeopt=menuone,noinsert
set shortmess+=c
set termguicolors
set background=dark

call plug#begin('~/.local/share/nvim/plugged')

Plug 'fratajczak/one-monokai-vim'
Plug 'josegamez82/starrynight'
Plug 'habamax/vim-habanight'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'mbbill/undotree'

Plug 'ryanoasis/vim-devicons'

call plug#end()

colorscheme starrynight

source ~/.config/nvim/airline.vim
source ~/.config/nvim/gitgutter.vim
source ~/.config/nvim/nerdtree.vim

nnoremap <SPACE> <Nop>
let mapleader = " "

nnoremap <C-s> :w<cr>

" window navigation
nnoremap <M-h> :wincmd h<cr>
nnoremap <M-j> :wincmd j<cr>
nnoremap <M-k> :wincmd k<cr>
nnoremap <M-l> :wincmd l<cr>
nnoremap <leader>v :wincmd v<cr>
nnoremap <silent> <M-+> :vertical resize +5<cr>
nnoremap <silent> <M--> :vertical resize -5<cr>

" buffer navigation
nnoremap <silent> <M-Tab> :bn<cr>
nnoremap <silent> <M-q> :bp<cr>
nnoremap <C-w> : bd<cr>
nnoremap <M-w> : bd<cr>

nnoremap <leader>u :UndotreeToggle<cr>
nnoremap <C-n> :NERDTreeToggle<cr>

