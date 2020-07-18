" Plug autoinstall https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'lilydjwg/colorizer'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-fugitive'
Plug 'vim-test/vim-test'
Plug 'prettier/vim-prettier'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
call plug#end()

let g:deoplete#enable_at_startup = 1

" Better Colors
set bg=dark
set termguicolors
let g:gruvbox_italic=0
let g:gruvbox_guisp_fallback="bg" 
colorscheme gruvbox
let g:terminal_ansi_colors=['#282828', '#cc241d', '#98971a', '#d79921',
            \ '#458588', '#b16286', '#689d6a', '#a89984', '#928374', '#fb4934',
            \ '#b8bb26', '#fabd2f', '#83a598', '#d3869b', '#8ec07c', '#ebdbb2']

" Number
set number
set relativenumber

" Airline
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='gruvbox'

" Learn
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Spell check
autocmd FileType text setlocal spell spelllang=pt_br,en_us
autocmd FileType markdown setlocal spell spelllang=pt_br,en_us
autocmd FileType asciidoc setlocal spell spelllang=pt_br,en_us
autocmd FileType sql setlocal spell spelllang=pt_br,en_us

" Clipboard
"set clipboard=unnamedplus

" Mouse
set mouse=a

" Misc
set hidden
set showcmd
set noshowmode
set cursorline
set tabstop=4
set expandtab
set shiftwidth=4
set shiftround
set autoindent
set smarttab
set backspace=indent,eol,start
set hls
set incsearch
set ignorecase
set smartcase
set scrolloff=1
set display+=lastline
set colorcolumn=80

" VimDiff
if &diff
    set noro
endif

" fzf
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
nnoremap <C-N> :Files<CR>
nnoremap <C-F> :Ag 

" UltiSnips
let g:UltiSnipsEditSplit="vertical"

"TESTS
nnoremap <Leader>tn :TestNearest<CR>
nnoremap <Leader>tf :TestFile<CR>

" Location List
nnoremap <C-k> :lprevious<CR>
nnoremap <C-j> :lnext<CR>

" Prettier
nnoremap <Leader>prt :Prettier<CR>
