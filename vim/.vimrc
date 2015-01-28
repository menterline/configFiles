set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'ap/vim-buftabline'
call vundle#end()
set laststatus=2
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ %)
syntax on
filetype plugin indent on

set noswapfile number
set hidden autochdir nowrap
set backspace=2
set smartindent tabstop=4 shiftwidth=4
set encoding=utf-8
set timeoutlen=50
set background=dark t_Co=256
set ignorecase autochdir
colorscheme desert

:imap jk <Esc>
:imap kj <Esc>

let mapleader = " "
noremap <Leader>w :w<CR>
noremap <leader>t :tabnew<CR>
noremap <leader>c :nohl<CR>

"move through split windows using Shift
map <S-h> :wincmd h<CR>
map <S-j> :wincmd j<CR>
map <S-k> :wincmd k<CR>
map <S-l> :wincmd l<CR>


"cycle through open buffers in one window
:map <C-S-l> :bn!<CR>
:map <C-S-h> :bp!<CR>

"use arrow keys to resize
noremap <C-up>    <C-W>+
noremap <C-down>  <C-W>-
noremap <C-left>  3<C-W><
noremap <C-right> 3<C-W>>

"move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

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
