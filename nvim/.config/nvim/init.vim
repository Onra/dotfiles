set relativenumber

" Vertical bar indicator for line size
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

let mapleader = " "

" jk to escape
inoremap jk <esc>

" Put the filepath in copyboard
nmap <leader>cs :let @*=expand("%")<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fc <cmd>Telescope git_commits<cr>

" Move between panes using leader-hjkl
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'morhetz/gruvbox'

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" nerdtree
Plug 'preservim/nerdtree'

" LSP
Plug 'neovim/nvim-lspconfig'

Plug 'prettier/vim-prettier', {
  \ 'tag': '0.2.7',
  \ 'do': 'npm install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'scss',
    \ 'json',
    \ 'graphql',
    \ 'markdown',
    \ 'vue',
    \ 'lua',
    \ 'php',
    \ 'python',
    \ 'ruby',
    \ 'html',
    \ 'swift' ] }

" Status line
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

"Styling
colorscheme gruvbox

" NERDTree
" Open nerdtree automatically when vim starts up if no files were specified`
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>

" Close Nerdtree if the only window left open is a Nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Display hidden files by default in NERDTree
let g:NERDTreeShowHidden=1

" LSP configuration for Python
lua << EOF
require'lspconfig'.pyright.setup{}
require('lualine').setup()
EOF

" Prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" Give more space for displaying messages.
set cmdheight=2

set colorcolumn=120
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Fix for backspace which was not working as expected.
set backspace=indent,eol,start

set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set number
