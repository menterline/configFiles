set laststatus=2
syntax enable
filetype plugin indent on

:imap jk <Esc>
:imap kj <Esc>

"move through split windows using Shift
if has ('nvim')
	tnoremap <C-h> <C-\><C-n><C-w>h<CR>
	tnoremap <C-j> <C-\><C-n><C-w>j<CR>
	tnoremap <C-k> <C-\><C-n><C-w>k<CR>
	tnoremap <C-l> <C-\><C-n><C-w>l<CR>
endif
map <C-h> <C-\><C-n><C-w>h<CR>
map <C-j> <C-\><C-n><C-w>j<CR>
map <C-k> <C-\><C-n><C-w>k<CR>
map <C-l> <C-\><C-n><C-w>l<CR>

"cycle through open buffers in one window
:map <S-l> :bn!<CR>
:map <S-h> :bp!<CR>

"use arrow keys to resize
noremap <C-up>    <C-W>+
noremap <C-down>  <C-W>-
noremap <C-left>  3<C-W><
noremap <C-right> 3<C-W>>

"move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
