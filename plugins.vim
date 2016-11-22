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

"------------------------------------------

" end vundle plugins
call vundle#end()
filetype plugin indent on
