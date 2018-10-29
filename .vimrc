set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'junegunn/fzf'
Plugin 'Valloric/YouCompleteMe'

" Different themes for Win and Linux

if has("win32") || has("gui_win32")
	Plugin 'colepeters/spacemacs-theme.vim'
elseif has("gui_gtk") || has("linux") || has("unix")
	Plugin 'dracula/vim'
endif

call vundle#end()            " required

filetype plugin indent on    " required

source $VIMRUNTIME/vimrc_example.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Creating a leader key                                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = ","

" Quicksave

nmap <leader>w :w!<cr>

" Force quit
nmap <leader>q :q!<cr>

" Remap Esc

inoremap <leader><leader> <Esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setting Wildmenu                                                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set wildmenu
set wildignore=*.o,*~,*.pyc
if has("win32")
	set wildignore+=.git\*
else
	set wildignore+=/.git/*,.DS_Store
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Changing Backup Preferences                                       "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nobackup
set nowb
set noswapfile
set noundofile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Picking Colorscheme                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("linux") || has("gui_gtk2") || has("unix")
	colorscheme dracula
elseif has("win32") || has("gui_win32")
	colorscheme spacemacs-theme
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Changes the color of the column if you cross 80 chars             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

highlight ColorColumn ctermbg=red
call matchadd('colorcolumn', '\%81v', 80)

" Display Numbers

set number
set number relativenumber

" No error sounds

set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Ignore case when searching

set ignorecase
set smartcase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Setting the font                                                   "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set gfn=IBM\ Plex\ Mono:h11:cANSI

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Setting the window size                                            "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set lines=30 columns=80
set encoding=utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable Scrollbars                                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

"Mapping Nerdtree keybinds

map <C-o> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change the document traversal speed                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <C-y> 5<C-y>
nnoremap <C-e> 5<C-e>

" Disable mouse

set mouse=c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set folding (collapse sections of code)                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set foldmethod=indent
set foldlevel=2
set foldnestmax=10
set nofoldenable

" remap keybind to fold from za to space in normal mode

nnoremap <space> za

" Editing cursor in Windows

if has("win32") || has("gui_win32")
	set guicursor=n-v-c-i:block-Cursor
	set guicursor+=i:blinkwait10
	set guicursor+=n-v-c:blinkon0
endif
