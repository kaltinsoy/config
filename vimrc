" ~/.vimrc - Vim Configuration File

" Enable syntax highlighting
syntax on

" Set line numbers
set number

" Enable relative line numbers
set relativenumber

" Enable auto-indentation
set autoindent
set smartindent

" Use spaces instead of tabs
set noexpandtab
set tabstop=8
set shiftwidth=8
set softtabstop=8

" Highlight search results
set hlsearch

" Enable incremental search
set incsearch

" Ignore case when searching (unless uppercase is used)
set ignorecase
set smartcase

" Enable mouse support
set mouse=a

" Enable clipboard support (system clipboard)
set clipboard=unnamedplus

" Show matching parentheses
set showmatch

" Show command in bottom bar
set showcmd

" Status line always visible
set laststatus=2

" Faster screen redraw
set lazyredraw

" Enable persistent undo
set undofile
set undodir=~/.vim/undo

" Set 24-bit color support
set termguicolors

" Set background to dark (adjust for light themes)

set background=dark

" Set timeout for key sequences (useful for mappings)
set timeoutlen=500

" Enable auto-completion in command mode
set wildmenu

" Don't show intro message
set shortmess+=I

" Map leader key to space
let mapleader=" "

" Quickly save file
nnoremap <leader>w :w<CR>

" Quickly quit file
nnoremap <leader>q :q<CR>

" Split navigation shortcuts
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

" Automatically reload file when changed externally
set autoread
autocmd FocusGained,BufEnter * checktime

" Enable file type plugins
filetype plugin indent on

" Set colorscheme (change as needed)
colorscheme desert

" Disable annoying swap files
set noswapfile

" Highlight trailing whitespace (optional)
autocmd BufRead,BufNewFile * match ErrorMsg '\s\+$'

" Open Netrw (file explorer) with leader + e
nnoremap <leader>e :Ex<CR>

" Auto-close brackets
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap " ""<Left>

" Show tabs and trailing spaces visually (optional)
set list
set listchars=tab:▸\ ,trail:·

" Remember cursor position in files
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | execute "normal! g`\"" | endif
" Auto-close brackets
inoremap { {<CR>}<Esc>O
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap " ""<Left>
" Force proper redraw in WSL
if system('uname -r') =~ "microsoft"
  set t_RV=
  set t_ut=
  set ttymouse=sgr
endif

