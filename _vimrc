if has("gui_running")

set encoding=utf-8

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'Raimondi/delimitMate'
"Plugin 'ryanoasis/vim-devicons'
Plugin 'MattesGroeger/vim-bookmarks'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

endif "gui_running

"let g:ycm_global_ycm_extra_conf = 'C:\Users\Administrator\.vim\bundle\YouCompleteMe\third_party\ycmd\cpp\ycm\.ycm_extra_conf.py'

autocmd FileType make setlocal noexpandtab

syntax on

if has("gui_running")
	colorscheme inkpot
endif


let g:airline_theme='simple'
"let g:airline_powerline_fonts=1

set nowrap
set ruler
set backspace=2
set backspace=indent,eol,start

set tabstop=8
set shiftwidth=8
set expandtab "for converting tabs to spaces
"set noexpandtab "for not converting tabs to spaces

set cc=80
set smartindent

set guifont=Consolas:h10:cANSI
"set guifont=Inconsolata:h10:cANSI
set hlsearch

set guioptions-=m "remove menu bar
set guioptions-=T "remove tool bar
set guioptions-=r " remove right hand scrollbar

nnoremap <silent> <F8> :TlistToggle<CR>
"nnoremap <F12> :Explore<CR>
nnoremap <F12> :NERDTreeToggle<CR>
nnoremap <F11> :TagbarToggle<CR>
"nnoremap <F10> :YcmCompleter GoToInclude<CR>
nnoremap <F10> :FZF<CR>

set number

"status line 
set laststatus=2
set statusline=
set statusline+=%f%m
set statusline+=%=%y\ %l,%c\ %p%%\  

let g:netrw_liststyle = 3

let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_confirm_extra_conf = 0

