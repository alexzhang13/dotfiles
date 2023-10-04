set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=88                   " set colour columns for good coding style
filetype plugin indent on   " allows auto-indenting depending on file type
set tabstop=4               " number of columns occupied by a tab character
set expandtab               " convert tabs to white space
set shiftwidth=4            " width for autoindents
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing

call plug#begin()

" styles
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/rebelot/kanagawa.nvim'

" filetree and search
Plug 'https://github.com/preservim/nerdtree'
Plug 'nvim-lua/plenary.nvim'
Plug 'https://github.com/BurntSushi/ripgrep'
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/tpope/vim-fugitive'

" LSP 
Plug 'https://github.com/nvim-treesitter/nvim-treesitter'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'ray-x/lsp_signature.nvim'
Plug 'https://github.com/dense-analysis/ale'

" Auto complete
Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi'
Plug 'deoplete-plugins/deoplete-clang'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" Convenience
Plug 'https://github.com/preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'mbbill/undotree'
Plug 'machakann/vim-highlightedyank'

" Python
Plug 'sbdchd/neoformat'

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
map K 3k
map J 3j
colorscheme kanagawa

" Remap conda activate

" deoplete
let g:deoplete#enable_at_startup = 1

" ALE
let g:ale_completion_enabled = 0
let g:ale_linters_explicit = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_linters = {
    \ 'vim': ['vint'],
    \ 'cpp': ['clang', 'g++'],
    \ 'c': ['clang']
\}

let NERDTreeShowHidden=1
let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++1z'

let g:ale_c_clang_options = '-Wall -O2 -std=c99'
let g:ale_cpp_clang_options = '-Wall -O2 -std=c++1z'

let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0
let g:jedi#show_call_signatures = "0"
let g:jedi#documentation_command = "F"

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

lua require ('init')
