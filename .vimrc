set nocompatible 
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'https://github.com/shime/vim-livedown.git'

Plugin 'https://github.com/jimmyhchan/dustjs.vim.git'

Plugin 'luochen1990/indent-detector.vim'

Plugin 'pangloss/vim-javascript'

Plugin 'nathanaelkane/vim-indent-guides'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

set autochdir
set number
set ruler
set title
set showmode
set showcmd

set incsearch
set ttyfast
set scrolloff=2
set wildmenu
set wildmode=list:longest,full
set backspace=indent,eol,start
set ff=unix

set showmatch
set matchtime=2

au BufRead,BufNewFile *.js.ejs setfiletype javascript
au BufRead,BufNewFile *.json setfiletype javascript
au BufRead,BufNewFile *.css.ejs setfiletype css
au BufRead,BufNewFile *.dust setfiletype html

set shiftwidth=4
set tabstop4

set enc=utf-8
set fenc=utf-8

set backupdir=~/tmp/vim/backup
set directory=~/tmp/vim/swap
set backup

syntax on
