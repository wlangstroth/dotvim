" Needed on some linux distros.
" see http://www.adamlowe.me/2009/12/vim-destroys-all-other-rails-editors.html
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set noswapfile

syntax on

set nocompatible
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set incsearch
set ruler

filetype plugin indent on

set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>

set wildmenu
set wildmode=list:longest

set showcmd
set lazyredraw
set grepprg=grep\ -nH\ $*

let g:tex_flavor='latex'

" Toggle spell checking on and off with `,s`
let mapleader = ","
nmap <silent> <leader>s :set spell!<CR>

" Make tabs and trailing space visible with `,l`
set listchars=tab:>-,trail:.
set list
nmap <silent> <leader>l :set invlist list?<cr>

" Set region to British English
set spelllang=en_gb

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

let clj_highlight_builtins=1
let g:clj_paren_rainbow=1
let g:lisp_rainbow=1

au BufRead,BufNewFile Guardfile,Gemfile,Rakefile,Thorfile,*.thor,*.ru set filetype=ruby
au BufRead,BufNewFile *.less set filetype=less
au BufRead,BufNewFile *.rkt set filetype=racket
au BufRead,BufNewFile *.json set filetype=javascript

" There has to be a better way to do this
au BufRead,BufNewFile *.hs set comments=sl:{-,mb:--,elx:-}
au BufRead,BufNewFile *.clj set comments=sl:/*,mb:**,elx:*/

map Q gq

set formatprg=par\ -w80
