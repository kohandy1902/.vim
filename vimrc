" ============================================================================== 
" vim-plug block
" ============================================================================== 

call plug#begin('~/.vim/plugged')
    " Color
    Plug 'joshdick/onedark.vim'


    " Editing
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-surround'


    " Browsing
    Plug 'junegunn/fzf'
    Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }


    " Git
    Plug 'tpope/vim-fugitive'

    
    " Language
    Plug 'mattn/vim-lsp-settings'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'prabirshrestha/vim-lsp'

    Plug 'rhysd/vim-clang-format'
    Plug 'bfrg/vim-cpp-modern'

    
    " Visual
    Plug 'junegunn/rainbow_parentheses.vim'

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()

" ==============================================================================
" vim settings
" ==============================================================================

" general settings
" ----------------------------------------------------------------------------
filetype plugin on
filetype indent on

set viminfo+=n~/.vim/.viminfo

" enable local config
set exrc


" appearance
" ----------------------------------------------------------------------------
colorscheme onedark

syntax enable

set number
set showcmd
set cursorline

set backspace=indent,eol,start

set wildmenu

set lazyredraw
set showmatch
set splitright
set noshowmode


" editing
" ----------------------------------------------------------------------------
" default tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" tab settings for some extensions
autocmd FileType yaml setlocal shiftwidth=2 softtabstop=2
autocmd FileType scala setlocal shiftwidth=2 softtabstop=2

set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

" moves
" ----------------------------------------------------------------------------
let mapleader=","

set foldenable
set foldlevelstart=7
set foldnestmax=10
set foldmethod=indent

nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]

inoremap jk <Esc>
inoremap kj <Esc>


" ============================================================================== 
" plugin settings
" ============================================================================== 

" NERDTree settings
" ----------------------------------------------------------------------------
nnoremap <Leader>nt :NERDTree<CR>


" vim-airline settings
" ----------------------------------------------------------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ":t"

set hidden

nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>q :bp<BAR> bd #<CR>


" vim-lsp autocomplete settings
" ----------------------------------------------------------------------------
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"


" rainbow parentheses settings
" ----------------------------------------------------------------------------
augroup rainbow_c
    autocmd!
    autocmd FileType c,cpp,objc RainbowParentheses
augroup END

let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]


" FZF settings
" ----------------------------------------------------------------------------
nmap <leader>p :FZF<cr>

