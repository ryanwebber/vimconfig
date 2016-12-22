" Configure vim plugins

" configuring vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" vundle plugins
" ------------------------------------------

" tagbar for ctags
Plugin 'majutsushi/tagbar'
nmap <Leader>tt :TagbarToggle<CR>

" color themes
Plugin 'flazz/vim-colorschemes'

" easy commenting
Plugin 'scrooloose/nerdcommenter'

" better highlighting for c++
Plugin 'octol/vim-cpp-enhanced-highlight'

" go plugin
Plugin 'fatih/vim-go'

"------------------------------------------

" end vundle plugins
call vundle#end()
filetype plugin indent on

" plugin settings
"
" go settings
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

