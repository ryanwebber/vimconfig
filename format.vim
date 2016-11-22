" Format Settings

" use indentation of previous line
set autoindent

" use intelligent indentation for C
set smartindent

" configure tabs
set noexpandtab
set tabstop=4
set shiftwidth=4

" turn on syntax highlighting
syntax on

" turn on line numbers
set number

" highlight matching braces
set showmatch

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" load previous place in file 
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" set persistent undo
set undofile
set undodir=~/.vim/undo

" set the indent guide and show problem whitespace
set list lcs=tab:\›\ ,trail:•,extends:#,nbsp:. 

" set the color scheme from https://github.com/flazz/vim-colorschemes
colorscheme adam
