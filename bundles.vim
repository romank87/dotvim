set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle. Required
Bundle 'gmarik/vundle'

Bundle 'Valloric/YouCompleteMe'
Bundle 'bufexplorer.zip'
Bundle 'zathras/a.vim'
Bundle 'jimenezrick/vimerl'
Bundle 'davidhalter/jedi-vim'
Bundle 'fatih/vim-go'

filetype plugin indent on
