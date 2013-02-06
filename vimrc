" Needed on some linux distros.
" see http://www.adamlowe.me/2009/12/vim-destroys-all-other-rails-editors.html
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

" Leader *********************************************************************
let mapleader = ","

" There are three different free version control systems on my computer, so no
" need for the backup.
set nobackup
set noswapfile

syntax on

set hidden
set nocompatible
set autoindent
set copyindent
set incsearch
set hlsearch
set smartcase
set ruler

set encoding=utf-8

nnoremap j gj
nnoremap k gk

set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>

set wildmenu
set wildmode=list:longest

set showcmd
set lazyredraw
set grepprg=grep\ -nH\ $*

" Toggle spell checking on and off with `,s`
nmap <silent> <leader>s :set spell!<CR>

set listchars=tab:>-,trail:.
set list

" Make tabs and trailing space invisible with `,l`
nmap <silent> <leader>l :set invlist list?<CR>
nmap <silent> <leader>/ :nohlsearch<CR>

" Set region to British English to get Canadian spelling
set spelllang=en_gb

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

augroup specialtypes
  " clear autocommands
  autocmd!

  au FileType ruby,haml,yaml,html,javascript,sass set ai sw=2 sts=2 et
  au FileType python set sw=4 sts=4 et
augroup END

if !exists("autocommandsLoaded")
  let autocommandsLoaded = 1
  au BufRead,BufNewFile *.less set filetype=less
  au BufRead,BufNewFile *.rkt set filetype=racket

  au BufRead,BufNewFile *.ru setlocal filetype=ruby
  au BufRead,BufNewFile Vagrantfile setlocal filetype=ruby
  au BufRead,BufNewFile Capfile setlocal filetype=ruby
  au BufRead,BufNewFile Guardfile setlocal filetype=ruby
  au BufRead,BufNewFile Rakefile setlocal filetype=ruby
  au BufRead,BufNewFile Gemfile setlocal filetype=ruby

  au FileType sml setlocal tabstop=4 shiftwidth=4
endif

" Just in case you open a read-only file, and want to save your changes.
cmap w!! w !sudo tee % >/dev/null

set formatprg=par\ -w80
