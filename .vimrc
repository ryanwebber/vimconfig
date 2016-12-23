" Custom Vim Config 

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8i

" disable vi compatibility (emulation of old bugs)
set nocompatible

" set the leader
let mapleader=","

" include the other customizations
source ~/.vim/plugins.vim
source ~/.vim/format.vim
source ~/.vim/keys.vim
source ~/.vim/syntax.vim
source ~/.vim/config.vim

