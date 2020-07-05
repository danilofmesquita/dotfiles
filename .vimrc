set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'lilydjwg/colorizer'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'preservim/nerdcommenter'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'dense-analysis/ale'
Plugin 'preservim/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'junegunn/fzf.vim'
Plugin 'prettier/vim-prettier'
"Plugin 'vim-syntastic/syntastic'

call vundle#end()
filetype plugin indent on

syntax on
set backspace=indent,eol,start
set incsearch
set cursorline
set hlsearch
set autoindent
set number
set relativenumber
set tabstop=4
set expandtab
set shiftwidth=4
set shiftround
set t_Co=256
set background=dark
set laststatus=2
set display=lastline
let g:gruvbox_guisp_fallback = "bg"
colorscheme gruvbox 
"set ttyfast
"set lazyredraw
set termguicolors

setlocal spell spelllang=en_us,pt_br
set showcmd
set noshowmode
set mouse=a

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set diffopt+=iwhite " Espaços em brancos no vimdiff
set noro "Evita que os arquivos sejam abertos como readonly

set clipboard^=unnamedplus

let g:airline_powerline_fonts = 1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='base16_gruvbox_dark_hard'

" ALE
"let g:ale_completion_enabled = 1
"let g:ale_completion_tsserver_autoimport = 1
"nmap <silent> <C-k> <Plug>(ale_previous_wrap)
"nmap <silent> <C-j> <Plug>(ale_next_wrap)
"nmap <silent> <C-b> :ALEGoToDefinition<CR> 
"let g:airline#extensions#ale#enabled = 1

" Permite confirmar autocomplete com enter
:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

nnoremap <silent> <C-S-N> :Files<CR>

" Syntastic
"let g:syntastic_asciidoc_asciidoc_exec = "asciidoctor"
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

