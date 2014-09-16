filetype off
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-scripts/a.vim'
call vundle#end()

syntax on
filetype plugin indent on

set noswapfile number
set hidden autochdir nowrap
set backspace=2
set smartindent tabstop=4
set shiftwidth=4
set laststatus=2
set encoding=utf-8
set timeoutlen=50
set t_Co=256
set ignorecase
colorscheme desert

:imap jk <Esc>
:imap kj <Esc>

"various leader mappings
let mapleader = ";"
noremap <Leader>w :w<CR>
:map <leader>t :tabnew<CR>


"move through split windows using Shift
map <S-h> :wincmd h<CR>
map <S-j> :wincmd j<CR>
map <S-k> :wincmd k<CR>
map <S-l> :wincmd l<CR>


"cycle through open buffers in one window
:map <C-S-l> :bn!<CR>
:map <C-S-h> :bp!<CR>

"airline settings
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1

"function to delete any trailing whitespace in current file
function! ShowSpaces(...)
	let @/='\v(\s+$)|( +\ze\t)'
	let oldhlsearch=&hlsearch
		if !a:0
		let &hlsearch=!&hlsearch
		else
		let &hlsearch=a:1
		end
	return oldhlsearch
endfunction
function! TrimSpaces() range
	let oldhlsearch=ShowSpaces(1)
	execute a:firstline.",".a:lastline."substitute ///ge"
	let &hlsearch=oldhlsearch
endfunction

command! -bar -nargs=? ShowSpaces call ShowSpaces(<args>)
command! -bar -nargs=0 -range=% TrimSpaces <line1>,<line2>call TrimSpaces()
nnoremap <F12>     :ShowSpaces 1<CR>
nnoremap <S-F12>   m`:TrimSpaces<CR>``
vnoremap <S-F12>   :TrimSpaces<CR>
