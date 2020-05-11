set termguicolors

" Startify options
let g:startify_session_dir = '~/.config/nvim'

let g:gitgutter_sign_added = '|'
let g:gitgutter_sign_modified = '|'
let g:gitgutter_sign_removed = '_'
let g:gitgutter_sign_removed_first_line = '_'
let g:gitgutter_sign_modified_removed = '>'

set tabstop=2 softtabstop=2 shiftwidth=2 textwidth=79 smarttab expandtab
" Filetype specific indentation
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4


" automatically read new file changes
set autoread

" allow me to switch away from unsaved buffers
set hidden

" Show whitespace after characters
" set list

" Turn on auto complete for vim commands
set wildmenu
set wildmode=full

set timeoutlen=1000 ttimeoutlen=0

" Use system clipboard as main register
set clipboard=unnamedplus

" ignore case in searches
set ic

" Display line numbers
set number

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Better split open defaults
set splitbelow
set splitright

" Highlight first search result
set incsearch

"Enable tag matching
runtime macros/matchit.vim
set updatetime=250

" remap leader
nnoremap <SPACE> <Nop>
let mapleader=","

call plug#begin('~/.vim/plugged')
    Plug 'easymotion/vim-easymotion'
    Plug 'dikiaap/minimalist'
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'mileszs/ack.vim'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-sensible'
    Plug 'scrooloose/nerdtree'
    Plug 'gcmt/taboo.vim'
    Plug 'w0rp/ale'
    Plug 'jiangmiao/auto-pairs'
    Plug 'sheerun/vim-polyglot'
    Plug 'yuttie/comfortable-motion.vim'
    Plug 'vimwiki/vimwiki'
    Plug 'lambdalisue/suda.vim'
    Plug 'w0ng/vim-hybrid'
    Plug 'mhinz/vim-startify'
    Plug 'tpope/vim-abolish'
    Plug 'SirVer/ultisnips'
    Plug 'fatih/vim-go'
    " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

let g:deoplete#enable_at_startup = 1

" Forgot sudo? No problem.
cmap w!! w suda://%

" Ale linter settings
let g:ale_linters = {
\   'javascript': ['standard'],
\   'python': ['pycodestyle'],
\}

" Taboo settings
let g:taboo_tab_format = "%f%m (%N)"

"Ultisnips settings
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir='/home/cody/.config/nvim/mysnippets'
let g:UltiSnipsSnippetDirectories=["mysnippets"]

" Visual settings
set background=dark
colo hybrid
hi TabLineFill ctermfg=DarkGrey

" nerdtree settings
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

" fzf keybinding
map <C-p> :FZF<CR>

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
  nmap <c-f> :Ack<space>
endif

nmap <C-_> <leader>c<Space>
vmap <C-_> <leader>c<Space>
