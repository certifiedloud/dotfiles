set tabstop=2 softtabstop=2 shiftwidth=2 textwidth=79 smarttab expandtab
" Filetype specific indentation
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4

set number

set encoding=utf8

"Enable tag matching
runtime macros/matchit.vim

set updatetime=250

" remap leader
let mapleader=" "

call plug#begin('~/.vim/plugged')
    Plug 'dikiaap/minimalist'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'vim-scripts/xptemplate'
    Plug 'severin-lemaignan/vim-minimap'
    Plug 'posva/vim-vue'
    Plug 'mileszs/ack.vim'
    Plug 'elixir-lang/vim-elixir'
    Plug 'Raimondi/delimitMate'
    Plug 'tpope/vim-surround'
    Plug 'mattn/emmet-vim'
    Plug 'scrooloose/nerdcommenter'
    Plug 'scrooloose/nerdtree'
    Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
    Plug 'gcmt/taboo.vim'
    Plug 'hdima/python-syntax'
    Plug 'jelera/vim-javascript-syntax'
    Plug 'joshdick/onedark.vim'
    Plug 'w0rp/ale'
    Plug 'Valloric/MatchTagAlways'
call plug#end()

" Ale linter settings
let g:ale_linters = {
\   'javascript': ['standard'],
\   'python': ['pycodestyle'],
\}

" Taboo settings
let g:taboo_tab_format = "%N - %f%m "

set background=dark
colo onedark
set guifont=Fira\ Code\ Regular\ 10
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=L


" nerdtree settings
map <C-n> :NERDTreeToggle<CR>

" ctrlp settings
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = '/node_modules'
let g:ctrlp_custom_ignore = '/deps'
let g:ctrlp_custom_ignore = '/_build'

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
  nmap <c-f> :Ack<space>
endif

nmap <C-_> <leader>c<Space>
vmap <C-_> <leader>c<Space>
