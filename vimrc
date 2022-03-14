call plug#begin('~/.vim/plugged')
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'tpope/vim-fugitive'

    Plug 'preservim/nerdtree'
    
    Plug 'prabirshrestha/vim-lsp'
    Plug 'mattn/vim-lsp-settings'
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'

    Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

colorscheme onedark

syntax enable

set number
set showcmd
set cursorline

filetype indent on
set wildmenu

set lazyredraw
set showmatch

set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

set foldenable
set foldlevelstart=7
set foldnestmax=10
set foldmethod=indent

nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]

set viminfo+=n~/.vim/.viminfo

let mapleader=","

inoremap jk <Esc>
inoremap kj <Esc>

set noshowmode

nnoremap <Leader>nt :NERDTree<CR>

set splitright

" for vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ":t"

set hidden

nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>q :bp<BAR> bd #<CR>

" LSP settings

" for ctrl-p
let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/](\.(git|hg|svn)|\_site)$',
    \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$'
\}

let g:ctrlp_working_path_mode = 'r'
nmap <leader>p :CtrlP<CR>


"" for vim-lsp autocomplete
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

"" default tab settings
set tabstop=4
set softtabstop=4
set expandtab

"" tab settings for some extensions
autocmd FileType yaml setlocal shiftwidth=2 softtabstop=2
autocmd FileType scala setlocal shiftwidth=2 softtabstop=2
