set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-syntastic/syntastic'
if has("win32")
	Plugin 'Shougo/neocomplete.vim'
elseif has("linux")
	Plugin 'Valloric/YouCompleteMe'
endif
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'dracula/vim'
Plugin 'wikitopian/hardmode'
Plugin 'junegunn/fzf'
Plugin 'colepeters/spacemacs-theme.vim'

" All of your Plugins must be added before the following line

call vundle#end()            " required

filetype plugin indent on    " required

source $VIMRUNTIME/vimrc_example.vim

let g:neocomplete#enable_at_startup = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Changing Backup Directory                                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("linux")
	set backup
	set backupdir=~/.vimtemp/backup
	set backupskip=~/.vimtemp/backup/*
	set directory=~/.vimtemp/backup
	set writebackup
endif

if has("win32")
	set backup
	set backupdir=C:\Users\b0ss\AppData\Local\Temp
	set backupskip=C:\Users\b0ss\AppData\Local\Temp\*
	set directory=C:\Users\b0ss\AppData\Local\Temp
	set writebackup
endif

" Changing undofile directory

try
	set undodir=~/.vimtemp/undodir
	set undofile
catch
endtry

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Picking Colorscheme                                          "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("linux") || has("gui_gtk2")
	colorscheme dracula
elseif has("win32") || has("gui_win32")
	colorscheme spacemacs-theme
endif

"Changes the color of the column if you cross 100 chars

call matchadd('colorcolumn', '\%81v', 100)

" Display Number

set number
set number relativenumber

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Setting the font                                                   "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("win32")
	set gfn=Hack:h14,IBM\ Plex:h14,Source\ Code\ Pro:h15
elseif has("gui_gtk2")
	set gfn=Hack:h14,IBM\ Plex:h14,Source\ Code\ Pro:h15
elseif has("linux")
	set gfn=Hack:h14,IBM\ Plex:h14,Source\ Code\ Pro:h15
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Setting the window size                                            "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set lines=40 columns=90
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

"Remapping ESC to Ctrl + Space

imap <C-Space> <Esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change the document traversal speed                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

noremap <C-y> 5<C-y>
noremap <C-e> 5<C-e>

" Disable mouse

set mouse=c

" Set folding (collapse sections of code)

set foldmethod=indent
set foldlevel=2
set foldnestmax=10
set nofoldenable

" remap keybind to fold from za to space in normal mode

nnoremap <space> za

" Editing cursor

set guicursor=n-v-c-i:block-Cursor
set guicursor+=i:blinkwait10
set guicursor+=n-v-c:blinkon0
