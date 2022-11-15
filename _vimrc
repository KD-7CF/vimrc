set nocompatible
set cursorline
set number
set ruler
set noexpandtab

set backspace=2
set background=dark
set history=100
set undolevels=150
set shiftwidth=3
set tabstop=3
set mouse=r
set nobk

filetype indent on
filetype plugin indent on
syntax on
colorscheme pablo

function Setcolor(...)
	if (a:1 == 0 && (&ft == 'h' || &ft == 'c' || &ft == 'cpp' || &ft == 'java'))
		highlight cursorline cterm=bold ctermbg=darkblue ctermfg=none

	elseif (a:1 == 1 && (&ft == 'h' || &ft == 'c' || &ft == 'cpp' || &ft == 'java')) 
		highlight cursorline cterm=bold ctermbg=darkmagenta ctermfg=none

	else
		highlight cursorline cterm=bold ctermbg=none ctermfg=none

	endif

endfunction

autocmd WinEnter    * setlocal  cursorline 
autocmd WinLeave    * setlocal  nocursorline 
autocmd InsertEnter * call Setcolor(1)
autocmd InsertLeave * call Setcolor(0) | wa

call Setcolor('')

highlight visual       cterm=bold ctermbg=darkgrey   ctermfg=none
highlight lineNr       cterm=none ctermbg=none    ctermfg=lightcyan
highlight statusline   cterm=bold ctermbg=darkred ctermfg=white
highlight statuslineNc cterm=bold ctermbg=white   ctermfg=black

set guicursor=i:ver100-iCursor





