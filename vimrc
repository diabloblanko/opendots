set nocompatible
set showmatch
set hlsearch
set number
syntax on
filetype plugin on
"set cursorline
set ttyfast
set noswapfile
" autoinstall vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin("~/.vim/plugged")
"	Plug 'ellisonleao/gruvbox.nvim'
	"Plug 'scrooloose/nerdtree'
	Plug 'morhetz/gruvbox'
	Plug 'sheerun/vim-polyglot'
	Plug 'ollykel/v-vim'
	"Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

set background=dark
colorscheme gruvbox
