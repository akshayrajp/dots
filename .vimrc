" List of plugins

	call plug#begin()
		Plug 'tpope/vim-surround'
		Plug 'preservim/nerdtree'
		Plug 'jreybert/vimagit'
		Plug 'vimwiki/vimwiki'
		Plug 'ap/vim-css-color'
		Plug 'morhetz/gruvbox'
	call plug#end()


" Set colour scheme

	colorscheme gruvbox
	set background=dark
	let g:gruvbox_contrast_dark = 'hard'


" Powerline settings

	let g:Powerline_symbols = 'fancy'
	set encoding=utf-8
	set fillchars+=stl:\ ,stlnc:\
	set term=xterm-256color
	set termencoding=utf-8
	set rtp+=/home/axai/.local/lib/python3.8/site-packages/powerline/bindings/vim/
	set laststatus=2
	set t_Co=256

	if has("gui_running")
    		let s:uname = system("uname")
    		if s:uname == "Darwin\n"
        		set guifont=Source\ Code\ Pro\ for\ Powerline:h15
        		colorscheme gruvbox              " set color scheme
    		endif
	endif


" Some basics:

	set nocompatible	" For setting vim incompatible to vi
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber



" Enable autocompletion:

	set wildmode=longest,list,full



" Disables automatic commenting on newline:

	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o



" Splits open at the bottom and right

	set splitbelow splitright


" Custom keybindings
" Select all text and copy to clipboard

	:nnoremap <C-a> ggVG <bar> "+y



" Shortcutting split navigation, saving a keypress:

	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l



" Save file as sudo on files that require root permission

	cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!



" Automatically deletes all trailing whitespace and newlines at end of file on save.

	autocmd BufWritePre * %s/\s\+$//e
	autocmd BufWritePre * %s/\n\+\%$//e
	autocmd BufWritePre *.[ch] %s/\%$/\r/e
