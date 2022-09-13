call plug#begin('~/.vim/plugged')
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'tpope/vim-fugitive'

    Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
    
    Plug 'prabirshrestha/vim-lsp'
    Plug 'mattn/vim-lsp-settings'
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'
    Plug 'bfrg/vim-cpp-modern'
    Plug 'rhysd/vim-clang-format'

    Plug 'junegunn/rainbow_parentheses.vim'
    Plug 'junegunn/fzf'
call plug#end()

colorscheme onedark

syntax enable

set number
set showcmd
set cursorline

set backspace=indent,eol,start

filetype indent on
set wildmenu

set lazyredraw
set showmatch

let mapleader=","

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

inoremap jk <Esc>
inoremap kj <Esc>

set splitright

set noshowmode

" NERDTree settings
nnoremap <Leader>nt :NERDTree<CR>

" vim-airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ":t"

set hidden

nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>q :bp<BAR> bd #<CR>

" vim-lsp autocomplete settings
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

" rainbow parentheses settings
augroup rainbow_c
    autocmd!
    autocmd FileType c,cpp,objc RainbowParentheses
augroup END

let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

" FZF settings
nmap <leader>p <C-p>

" default tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" tab settings for some extensions
autocmd FileType yaml setlocal shiftwidth=2 softtabstop=2
autocmd FileType scala setlocal shiftwidth=2 softtabstop=2

" enable local config
set exrc

