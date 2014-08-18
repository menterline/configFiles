filetype off
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'

call vundle#end()




syntax on
filetype plugin indent on

set noswapfile number nocompatible 
set hidden autochdir nowrap
set backspace=2
set smartindent tabstop=4
set shiftwidth=4 
set laststatus=2
set encoding=utf-8
set timeoutlen=50
set t_Co=256

colorscheme desert

:imap jk <Esc>
:imap kj <Esc>

"various leader mappings
let mapleader = ";"
filetype plugin indent off
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>p :CtrlP ~/<CR>
noremap <Leader>w :w<CR>
:map <leader>t :tabnew<CR>


"move through split windows using Shift
map <S-h> :wincmd h<CR>
map <S-j> :wincmd j<CR>
map <S-k> :wincmd k<CR>
map <S-l> :wincmd l<CR>


"cycle through open buffers in one window
:map <C-S-l> :bnext!<CR>
:map <C-S-h> :bprev!<CR>

"airline settings
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1


