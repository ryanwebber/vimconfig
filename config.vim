" Configuring vim behaviour

" toggle the tagbar
nmap <F8> :TagbarToggle<CR>

" load previous place in file 
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" set persistent undo
set undofile
set undodir=~/.vim/undo

