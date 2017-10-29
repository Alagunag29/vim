call plug#begin('~/.vim/plugged')
Plug 'Dru89/vim-adventurous'
Plug 'nightsense/nemo'
Plug 'yuttie/hydrangea-vim'
Plug 'hzchirs/vim-material' " let g:airline_theme='material'
Plug 'lu-ren/SerialExperimentsLain'
Plug 'vim-scripts/ChocolateLiquor'
Plug 'dracula/vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'scrooloose/nerdtree'
call plug#end()

" GENERAL VIM 

syntax on
set title
set number
set autoindent
set t_Co=256
set tabstop=4
set shiftwidth=4
set background=dark
set encoding=utf-8

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" color: #2C2D39; font: Courier 10 Pitch Bold; 
" Temas =>  : 
color dracula " #2C2D39 
"colorscheme adventurous
"colorscheme nemo 
"colorscheme hydrangea
"colorscheme hydrangea
"colorscheme ChocolateLiquor " #1D1C2F
"colorscheme SerialExperimentsLain

" ======== JS ========
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

" REACT
let g:jsx_ext_required = 0  " .js 
" ====================

" Plugin nerdtree 
" autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <F2> :NERDTreeToggle<CR>
