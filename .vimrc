"Turn off compatability mode
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/snipmate/snippets/javascript/*.snippets

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
"Utils
Bundle "MarcWeber/vim-addon-mw-utils"
Plugin 'christoomey/vim-tmux-navigator'
Bundle "tomtom/tlib_vim"

"Code helpers
Bundle "garbas/vim-snipmate"
Plugin 'Chiel92/vim-autoformat'
Plugin 'Raimondi/delimitMate'
Plugin 'ervandew/supertab'

"ViM Display
Plugin 'bling/vim-airline'

"File Navigation
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'

"Languages
Plugin 'digitaltoad/vim-jade'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'groenewege/vim-less'

"Colorschemes
Plugin 'altercation/vim-colors-solarized' 
Plugin 'junegunn/seoul256.vim'
call vundle#end()

imap <C-J> <Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"Shows current typed command
set showcmd

"Set autoindentt
set autoindent

"Tab completion
set wildmenu
set wildmode=list:longest,full

"Enable mouse support
set mouse=a

"Show line numbers
set number

"Remove buffer when closed
set nohidden

"Status line information
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

"Syntax highlighting
syntax on

set cul

"Set tabs
set tabstop=4
set shiftwidth=4

"Allow deleting previous items and indents
set backspace=indent,eol,start

"Find path settings
set path=$PWD/**

" show trailing spaces as dots
set listchars+=trail:·

"Key remaps
nnoremap <C-Q> <C-L>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Change split behavior
set splitbelow
set splitright

filetype plugin indent on
filetype plugin on

"set omnifunc=syntaxcomplete#Complete

au FileType javascript call JavaScriptFold()
"let g:syntastic_javascript_checkers = ['jslint']

"Color scheme
colorscheme seoul256
colorscheme solarized
set background=light

let g:airline_powerline_fonts = 0
