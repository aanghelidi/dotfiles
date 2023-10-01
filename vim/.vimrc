set nocp
filetype plugin on
set autoindent
set autowrite
set number
set textwidth=120
set showmode
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent
set smarttab
syntax on
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

"Mappings

let mapleader = ","
" better use of arrow keys, number increment/decrement
nnoremap <up> <C-a>
nnoremap <down> <C-x>
" Better page down and page up
noremap <C-n> <C-d>
noremap <C-p> <C-b>

"Python
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4
