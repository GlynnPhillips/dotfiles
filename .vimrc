set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'https://github.com/shime/vim-livedown.git'

Plugin 'https://github.com/jimmyhchan/dustjs.vim.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set autochdir
set number
set ruler
set title
set showmode
set showcmd

"set wrap
"set linebreak
"set nolist
"set textwidth=0
"set wrapmargin=0

set incsearch
set ttyfast
set scrolloff=2
set wildmenu
set wildmode=list:longest,full
set backspace=indent,eol,start
set ff=unix

set showmatch
set matchtime=2

function! s:set_js_settings()
  set noexpandtab
  set tabstop=4
  set shiftwidth=4
  set softtabstop=4
  set smartindent
  set autoindent
endfunction
function! s:set_txt_settings()
  set noexpandtab
  set tabstop=4
  set shiftwidth=4
  set nosmartindent
  set autoindent
endfunction

call s:set_txt_settings()

autocmd BufNewFile,BufEnter *.js call s:set_js_settings()
autocmd BufLeave *.js call s:set_txt_settings()
autocmd BufNewFile,BufEnter *.ejs call s:set_js_settings()
autocmd BufLeave *.ejs call s:set_txt_settings()
autocmd BufNewFile,BufEnter *.json call s:set_js_settings()
autocmd BufLeave *.json call s:set_txt_settings()
autocmd BufNewFile,BufEnter *.css call s:set_js_settings()
autocmd BufLeave *.css call s:set_txt_settings()
autocmd BufNewFile,BufEnter *.scss call s:set_js_settings()
autocmd BufLeave *.css call s:set_txt_settings()

autocmd BufNewFile,BufEnter *.html call s:set_cs_settings()
autocmd BufLeave *.html call s:set_txt_settings()
autocmd BufNewFile,BufEnter *.xml call s:set_cs_settings()
autocmd BufLeave *.xml call s:set_txt_settings()
autocmd BufNewFile,BufEnter *.dust call s:set_cs_settings()
autocmd BufLeave *.dust call s:set_txt_settings()

set enc=utf-8
set fenc=utf-8

set backupdir=~/tmp/vim/backup
set directory=~/tmp/vim/swap
set backup

syntax on
