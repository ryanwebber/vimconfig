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

" set the indent guide and show problem whitespace
set list lcs=tab:\›\ ,trail:•,extends:#,nbsp:. 

" Attempt to set a color scheme
colorscheme iceberg
set cursorline
hi CursorLine term=bold cterm=none
