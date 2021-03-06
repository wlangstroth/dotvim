" Needed on some linux distros.
" see http://blog.adamlowe.com/2009/12/vim-destroys-all-other-rails-editors.html
filetype off

" Pathogen ********************************************************************
call pathogen#runtime_append_all_bundles()

syntax on
filetype plugin indent on

" Leader **********************************************************************
let mapleader = ","

set nobackup
set noswapfile

colors will

let loaded_matchparen = 1

set hidden
set nocompatible
set autoindent
set copyindent
set incsearch
set hlsearch
set shiftwidth=2
set tabstop=2
set expandtab
set showmatch
set ignorecase smartcase
set ruler
set scrolloff=3
set nofoldenable    " disable folding
set nojoinspaces    " no double spaces after .
set ttimeout
set ttimeoutlen=100

set encoding=utf-8

nnoremap j gj
nnoremap k gk

" close a buffer without closing the split
nnoremap <c-c> :bp\|bd #<CR>

" emacs-style end-of-line and beginning-of-line commands
inoremap <c-e> <c-o>$
inoremap <c-a> <c-o>^

" next search result right in the middle of the screen
nmap n nzz
nmap N Nzz

set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>

set showcmd
set lazyredraw
set grepprg=grep\ -nH\ $* " XXX Change to ag command

" Toggle spell checking on and off with `,s`
nmap <silent> <leader>s :set spell!<CR>

set listchars=tab:>-,trail:.
set list

" Easier window switching
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
set splitright

" Make tabs and trailing space invisible with `,l`
nmap <silent> <leader>l :set invlist list?<CR>

" Hide search highlight
nmap <silent> <leader>/ :let @/ = ""<CR>

" Set region to British English to get Canadian spelling
set spelllang=en_gb

" Turn off C-p and C-n menu in insert mode
set completeopt=

au FileType html set omnifunc=htmlcomplete#CompleteTags
au FileType css set omnifunc=csscomplete#CompleteCSS

au FileType c,css,haskell set ai sw=4 sts=4 et

if !exists("autocommandsLoaded")
  let autocommandsLoaded = 1
  au BufRead,BufNewFile *.less set filetype=less
  au BufRead,BufNewFile *.hamlc set filetype=haml
  au BufRead,BufNewFile *.tpl set filetype=html

  au FileType markdown,text setlocal fo+=t tw=80

  autocmd BufWritePre * :%s/\s\+$//e " Remove trailing spaces before writing
endif

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

set formatprg=par\ -w80

" -- CtrlP --------------------------------------------------------------------
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v(\.git|\.hg|_darcs|dist)$',
  \ 'file': '\v\.(so)$'
  \}

" -- Syntastic ----------------------------------------------------------------
let g:syntastic_c_check_header = 1
let g:syntastic_mode_map = { 'mode': 'active',
  \ 'active_filetypes': [],
  \ 'passive_filetypes': ['html'] }
"let g:syntastic_debug = 3

" -- Rspec --------------------------------------------------------------------
let g:rspec_command = "!clear && bundle exec rspec {spec}"
