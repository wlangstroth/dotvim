" Needed on some linux distros.
" see http://www.adamlowe.me/2009/12/vim-destroys-all-other-rails-editors.html
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

let mapleader = ","

" There are three different free version control systems on my computer. I'm
" good, thanks.
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
set incsearch
set hlsearch
set smartcase
set ruler


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


" Toggle spell checking on and off with `,s`
nmap <silent> <leader>s :set spell!<CR>

set listchars=tab:>-,trail:.
set list

" Make tabs and trailing space invisible with `,l`
nmap <silent> <leader>l :set invlist list?<CR>
nmap <silent> <leader>/ :nohlsearch<CR>

" Set region to British English
set spelllang=en_gb

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

au BufRead,BufNewFile Gemfile,Rakefile,Capfile,*.ru set filetype=ruby
au BufRead,BufNewFile *.less set filetype=less
au BufRead,BufNewFile *.rkt set filetype=racket
au BufRead,BufNewFile *.json set filetype=javascript

" Just in case you open a read-only file, and want to save your changes.
cmap w!! w !sudo tee % >/dev/null

set formatprg=par\ -w80
