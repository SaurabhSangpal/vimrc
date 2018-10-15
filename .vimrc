set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-syntastic/syntastic'

" Adding different autocomplete options for Windows and Linux.

if has("win32")
	Plugin 'Shougo/neocomplete.vim'
elseif has("linux")
	Plugin 'Valloric/YouCompleteMe'
endif

Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'junegunn/fzf'

" Use this next plugin only if you want to learn advanced
" vim controls.

"Plugin 'wikitopian/hardmode'

if has("win32") || has("gui_win32")
	Plugin 'colepeters/spacemacs-theme.vim'
elseif has("gui_gtk") || has("linux")
	Plugin 'dracula/vim'
endif

call vundle#end()            " required

filetype plugin indent on    " required

source $VIMRUNTIME/vimrc_example.vim

" Enabling Neocomplete on startup

if has("win32")
	let g:neocomplete#enable_at_startup = 1
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

if has("linux") || has("gui_gtk2")
	colorscheme dracula
elseif has("win32") || has("gui_win32")
	colorscheme spacemacs-theme
endif

"Changes the color of the column if you cross 100 chars

highlight ColorColumn ctermbg=red
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

"Remapping ESC

inoremap <S-Tab> <Esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change the document traversal speed                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

noremap <C-y> 5<C-y>
noremap <C-e> 5<C-e>

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

" Editing cursor

set guicursor=n-v-c-i:block-Cursor
set guicursor+=i:blinkwait10
set guicursor+=n-v-c:blinkon0
