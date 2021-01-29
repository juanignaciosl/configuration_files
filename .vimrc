set nocompatible
set expandtab
set shiftwidth=2
set softtabstop=2
set encoding=utf-8
syntax enable
set ruler
set ai
set number " novagrant
filetype plugin indent on
set backspace=2
set path+=**
set wildmenu
" Don't add line breaks
set textwidth=0 wrapmargin=0

au Filetype markdown source ~/.vim/scripts/markdown.vim

set mouse=
"set ttymouse=
