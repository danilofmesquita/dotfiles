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
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'
call plug#end()

" Better Colors
set termguicolors
let g:gruvbox_italic = 0
let g:gruvbox_guisp_fallback = "bg" 
colorscheme gruvbox

" Number
set number
set relativenumber

" Airlinelet g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='base16_gruvbox_dark_hard'

" Learn
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Spell check
autocmd FileType text setlocal spell spelllang=pt_br,en_us
autocmd FileType markdown setlocal spell spelllang=pt_br,en_us
autocmd FileType asciidoc setlocal spell spelllang=pt_br,en_us

" Clipboard
set clipboard+=unnamedplus

" Mouse
set mouse=a

" Misc
set showcmd
set noshowmode
set cursorline
set tabstop=4
set expandtab
set shiftwidth=4
set noro

" fzf
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
nnoremap <C-S-N> :Files<CR>
nnoremap <C-S-F> :Ag 

" UltiSnips
let g:UltiSnipsEditSplit="vertical"

" Ale
let g:ale_completion_enabled = 1
let g:ale_completion_tsserver_autoimport = 1
autocmd FileType typescript nnoremap <C-A-L> :ALEFix prettier<CR>
autocmd FileType typescript nnoremap <C-A-O> :ALEOrganizeImports<CR>
autocmd FileType typescript nnoremap <A-CR> :ALEFix tslint<CR>
