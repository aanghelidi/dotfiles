set nocp
filetype plugin on
set autoindent
set autowrite
set number
set textwidth=88
set showmode
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent
set smarttab

syntax on

au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4

let mapleader = ","

" better use of arrow keys, number increment/decrement
nnoremap <up> <C-a>
nnoremap <down> <C-x>

" Better page down and page up
noremap <C-n> <C-d>
noremap <C-p> <C-b>

set pastetoggle=<F2>


set expandtab
set nobackup
set noswapfile
set nowritebackup
set icon
set hlsearch
set incsearch
set hidden
set history=100
set ttyfast
set wildmenu

if has ("gui_gtk3")
  set guioptions-=m
  set guioptions-=T
  set guioptions-=r
  set guioptions-=R
  set guioptions-=l
  set guioptions-=L
  set guioptions-=b
  set guioptions+=d

  call plug#begin()
    Plug 'morhetz/gruvbox'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
  call plug#end()

  colorscheme gruvbox
  set background=dark
  set guifont=JetBrains\ Mono\ Nerd\ Font\ Mono\ 12

  noremap <Leader>ff :Files<CR> 
  noremap <Leader>fg :GitFiles<CR> 
  noremap <Leader>fb :Buffers<CR> 
endif


