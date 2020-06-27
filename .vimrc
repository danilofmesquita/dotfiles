set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim'
Plugin 'ervandew/supertab'
Plugin 'lilydjwg/colorizer'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-syntastic/syntastic'

call vundle#end()
filetype plugin indent on

syntax on
set autoindent
set number
set tabstop=3
set expandtab
set shiftwidth=3
set shiftround
set omnifunc=syntaxcomplete#Complete
set t_Co=256
set background=dark
set laststatus=2
set display=lastline
let g:SuperTabDefaultCompletionType='context' 
"let g:airline_powerline_fonts = 1
let g:dracula_colorterm = 0
colorscheme dracula

"setlocal spell spelllang=en_us,pt_br
set spelllang=en_us,pt_br
set showcmd
set noshowmode
set mouse=a

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>A

" Espaços em brancos no vimdiff
set diffopt+=iwhite

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

set clipboard^=unnamedplus
