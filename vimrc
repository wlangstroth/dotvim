" Needed on some linux distros.
" see http://www.adamlowe.me/2009/12/vim-destroys-all-other-rails-editors.html
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set nobackup
set noswapfile

syntax on

set hidden
set nocompatible
set autoindent
set copyindent
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set incsearch
set hlsearch
set ruler

filetype plugin indent on

nnoremap j gj
nnoremap k gk

set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>

set wildmenu
set wildmode=list:longest

set showcmd
set lazyredraw
set grepprg=grep\ -nH\ $*

let g:tex_flavor='latex'

let mapleader = ","

" Toggle spell checking on and off with `,s`
nmap <silent> <leader>s :set spell!<CR>

set listchars=tab:>-,trail:.
set list

" Make tabs and trailing space visible with `,l`
nmap <silent> <leader>l :set invlist list?<CR>
nmap <silent> <leader>/ :nohlsearch<CR>

" Set region to British English
set spelllang=en_gb

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

au BufRead,BufNewFile Gemfile,Rakefile,*.ru set filetype=ruby
au BufRead,BufNewFile *.less set filetype=less
au BufRead,BufNewFile *.rkt set filetype=racket
au BufRead,BufNewFile *.json set filetype=javascript

" There has to be a better way to do this
au BufRead,BufNewFile *.hs set comments=sl:{-,mb:--,elx:-}

map Q gq

cmap w!! w !sudo tee % >/dev/null

set formatprg=par\ -w80
