" Specify a directory for plug:ins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdcommenter'

Plug 'SirVer/ultisnips'  
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
" Themes
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Python
Plug 'klen/python-mode', { 'for': 'python' }
Plug 'mitsuhiko/vim-python-combined', { 'for': 'python' }

" C/C++
Plug 'Rip-Rip/clang_complete', { 'for': ['c', 'cpp', 'cxx'] }

call plug#end()

syntax on
set t_Co=256
colorscheme gruvbox
set background=dark

set backspace=indent,eol,start
"let g:gruvbox_contrast_dark='hard'

filetype plugin on

set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set number
set expandtab

set wrap
set showmatch 
set hlsearch
set incsearch
set ignorecase

set nobackup 	     " no backup files
set nowritebackup    " only in case you don't want a backup file while editing
set noswapfile 	     " no swap files

map <C-n> :NERDTreeToggle<CR>

" Airline options
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='bubblegum'

augroup vimrc_autocmds
        autocmd!
        autocmd FileType ruby,python,javascript,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
        autocmd FileType ruby,python,javascript,c,cpp match Excess /\%80v.*/
        autocmd FileType ruby,python,javascript,c,cpp set nowrap
augroup END
