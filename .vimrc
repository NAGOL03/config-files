"Plugins
call plug#begin()

Plug 'tpope/vim-sensible'

Plug 'sheerun/vim-polyglot'

Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'LunarWatcher/auto-pairs'

" Plug 'maxboisvert/vim-simple-complete'

Plug 'prabirshrestha/vim-lsp'

Plug 'prabirshrestha/asyncomplete.vim'

Plug 'prabirshrestha/asyncomplete-lsp.vim'

Plug 'mattn/vim-lsp-settings'

call plug#end() " executes filetype plugin indent on and syntax enable

" Options
let g:lsp_diagnostics_enabled=0

" Settings
colorscheme wildcharm
set signcolumn=no
set number
set numberwidth=3

" Abbreviations
iabbrev @author@ Author: <cr>Project
			\ Name:<cr>Description:<esc>0<C-v>3k

" Keymap"
let mapleader = ' '
inoremap jk <esc>
inoremap <s-cr> <end>
nnoremap <leader>e :NERDTreeToggle<cr>
nnoremap <leader>ss :source $MYVIMRC<cr>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <cr> pumvisible() ? asyncomplete#close_popup() : "\<cr>"


" Auto Commands
autocmd FileType cpp nnoremap <buffer> <leader>c :wa<cr>:!g++ -std=c++20 -Wall % -o %:r && ./%:r
augroup filetype_vimrc
	autocmd!
	autocmd BufReadPre *.vimrc echom 'Vim superiority!'
augroup end


" Commands
command Config tabnew $MYVIMRC

