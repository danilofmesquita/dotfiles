set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim'
Plugin 'ervandew/supertab'
Plugin 'lilydjwg/colorizer'

call vundle#end()
filetype plugin indent on

set number
syntax on
set tabstop=3
set expandtab
set shiftwidth=3
set omnifunc=syntaxcomplete#Complete
set t_Co=256
set background=dark
let g:SuperTabDefaultCompletionType="context" 
let g:dracula_colorterm = 0
colorscheme dracula

setlocal spell spelllang=en_us,pt_br
set showcmd

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
