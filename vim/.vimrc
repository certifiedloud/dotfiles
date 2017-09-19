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
call plug#end()

" Taboo settings
let g:taboo_tab_format = "%N - %f%m "

colo minimalist
set guifont=Fira\ Code\ Regular\ 13
set guioptions-=T

" nerdtree settings
map <C-n> :NERDTreeToggle<CR>

" ctrlp settings
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = '/node_modules'

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
  nmap <c-f> :Ack<space>
endif

nmap <C-_> <leader>c<Space>
vmap <C-_> <leader>c<Space>
