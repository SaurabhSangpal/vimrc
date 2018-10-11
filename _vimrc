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
Plugin 'Shougo/neocomplete.vim'
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

" Use this only if you are on Windows
set backup
set backupdir=C:\Users\b0ss\AppData\Local\Temp
set backupskip=C:\Users\b0ss\AppData\Local\Temp\*
set directory=C:\Users\b0ss\AppData\Local\Temp
set writebackup
set noundofile
colorscheme spacemacs-theme
"Changes the color of the column if you cross 100 chars
call matchadd('colorcolumn', '\%81v', 100)
set number
set number relativenumber
"Setting the font
if has("gui_win32")
  set guifont=Source_Code_Pro:h12:cANSI
endif
"Setting the window size
set lines=40 columns=90
set encoding=utf-8
"Mapping Nerdtree keybinds
map <C-o> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>
"Remapping ESC to Ctrl + Space
imap <C-Space> <Esc>
" Change the document traversal speed
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
