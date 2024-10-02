" ==============================================================================
" vim-plug block
" ==============================================================================

call plug#begin('~/.vim/plugged')
    " Editing
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'


    " Browsing
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'christoomey/vim-tmux-navigator'


    " Git
    Plug 'tpope/vim-fugitive'


    " Language
    Plug 'mattn/vim-lsp-settings'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'prabirshrestha/vim-lsp'

    Plug 'rhysd/vim-clang-format'
    Plug 'bfrg/vim-cpp-modern'

    Plug 'fatih/vim-go'

    " Visual
    Plug 'junegunn/rainbow_parentheses.vim'

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Terminal
    Plug 'voldikss/vim-floaterm'
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

nnoremap <space> <Nop>
let mapleader=" "

" appearance
" ----------------------------------------------------------------------------
set nocompatible

if has("termguicolors")
    set termguicolors
endif

colorscheme catppuccin_mocha

syntax enable

set number
set showcmd
set cursorline

set backspace=indent,eol,start

set wildmenu

set lazyredraw
set showmatch
set noshowmode

set splitright

" editing
" ----------------------------------------------------------------------------
" default tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" tab settings for some extensions
autocmd FileType yaml,scala setlocal shiftwidth=2 softtabstop=2

set incsearch
set hlsearch
nnoremap <leader>0 :nohlsearch<cr>
nnoremap , ciw

" moves
" ----------------------------------------------------------------------------
set foldenable
set foldlevelstart=7
set foldnestmax=10
set foldmethod=indent

nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]

inoremap jk <esc>


" ==============================================================================
" plugin settings
" ==============================================================================

" NERDTree settings
" ----------------------------------------------------------------------------
nnoremap <leader>nt :NERDTree<cr>


" vim-airline settings
" ----------------------------------------------------------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ":t"

set hidden

nmap <leader>l :bnext<cr>
nmap <leader>h :bprevious<cr>
nmap <leader>q :bp<bar> bd #<cr>

" vim-lsp settings
" ----------------------------------------------------------------------------
nmap <leader>s :LspHover<cr>

inoremap <expr> <tab>   pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
inoremap <expr> <cr>    pumvisible() ? "\<c-y>" : "\<cr>"

" vim-go settings
" ----------------------------------------------------------------------------

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1

" rainbow parentheses settings
" ----------------------------------------------------------------------------
augroup rainbow_c
    autocmd!
    autocmd FileType c,cpp,go RainbowParentheses
augroup END

let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]


" FZF settings
" ----------------------------------------------------------------------------
nmap <leader>p :FZF

" Floaterm settings
" ----------------------------------------------------------------------------
let g:floaterm_keymap_toggle = '<leader>t'
let g:floaterm_width = 0.9

augroup floaterm
    autocmd!
    autocmd ExitPre * :FloatermKill!
augroup END
