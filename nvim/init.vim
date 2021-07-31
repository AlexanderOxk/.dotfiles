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

call plug#begin('~/.local/share/nvim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'fratajczak/one-monokai-vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'mbbill/undotree'

"Plug 'nvim-lua/popup.nvim'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim'

"Plug 'neovim/nvim-lspconfig'
"Plug 'nvim-lua/completion-nvim'
"Plug 'steelsojka/completion-buffers'

"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

Plug 'ryanoasis/vim-devicons'

call plug#end()

colorscheme one-monokai

source ~/.config/nvim/airline.vim
source ~/.config/nvim/gitgutter.vim
source ~/.config/nvim/nerdtree.vim
"source ~/.config/nvim/ultisnips.vim
"source ~/.config/nvim/completion-nvim.vim
"luafile ~/.config/nvim/lsp-config.lua
"luafile ~/.config/nvim/treesitter-config.lua

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

" telescope keybindings
"nnoremap <C-p> :Telescope find_files<cr>
"nnoremap <C-f> :Telescope live_grep<cr>

" lsp keybindings
"nnoremap <leader>gd <cmd>lua vim.lsp.buf.definition()<CR>
"nnoremap <leader>gD <cmd>lua vim.lsp.buf.declaration()<CR>
"nnoremap <leader>gr <cmd>lua vim.lsp.buf.references()<CR>
"nnoremap <leader>gi <cmd>lua vim.lsp.buf.implementation()<CR>
"nnoremap K <cmd>lua vim.lsp.buf.hover()<CR>
"nnoremap <silent> ff <cmd>lua vim.lsp.buf.formatting()<CR>

" Use <Tab> and <S-Tab> to navigate through popup menu
"inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

