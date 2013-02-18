filetype off
execute pathogen#infect()

syntax enable
set nocompatible
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab

set autoindent
set smartindent

set wildmode=list,longest,full
set completeopt=menu,longest

set fileencodings=utf-8,koi8-r,cp1251,cp866
set list
set number
set hidden
set ignorecase
set hlsearch
set ignorecase
"set incsearch

set listchars=tab:.\ ,trail:.,nbsp:%
colorscheme torte

nmap <C-J> 5j
nmap <C-K> 5k

set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P
set laststatus=2

" <F8> File encoding for open
let b:encindex=0
function! RotateEnc()
  let y = -1
  while y == -1
    let encstring = "#cp1251#8bit-cp866#utf-8#koi8-u#ucs-2le#"
    let x = match(encstring,"#",b:encindex)
    let y = match(encstring,"#",x+1)
    let b:encindex = x+1
    if y == -1
      let b:encindex = 0
    else
      let str = strpart(encstring,x+1,y-x-1)
      return ":e ++enc=".str
    endif
  endwhile
endfunction

map <F8>    :execute RotateEnc()<CR>
vmap <F8>   <C-C><F8>
imap <F8>   <C-O><F8>

"Bubble single lines
nmap <C-Up> ddkP
nmap <C-Down> ddp

"Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

