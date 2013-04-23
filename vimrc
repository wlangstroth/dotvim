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

color will

set hidden
set nocompatible
set autoindent
set copyindent
set incsearch
set hlsearch
set shiftwidth=4
set tabstop=4
set expandtab
set showmatch
set ignorecase smartcase
set ruler
set scrolloff=3

set encoding=utf-8

nnoremap j gj
nnoremap k gk

" emacs-style end-of-line and beginning-of-line commands
imap <c-e> <c-o>$
imap <c-a> <c-o>^

set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>

set showcmd
set lazyredraw
set grepprg=grep\ -nH\ $*

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
nmap <silent> <leader>/ :nohlsearch<CR>

" Set region to British English to get Canadian spelling
set spelllang=en_gb

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

au FileType ruby,haml,yaml,html,javascript,sass,scss,cucumber set ai sw=2 sts=2 et

if !exists("autocommandsLoaded")
  let autocommandsLoaded = 1
  au BufRead,BufNewFile *.less set filetype=less

  au FileType markdown,text setlocal fo+=t tw=80

  autocmd BufWritePre * :%s/\s\+$//e
endif

set formatprg=par\ -w80

let g:ctrlp_user_command = {
    \ 'types': {
        \ 1: ['.git', 'cd %s && git ls-files | grep -v  "png\|jpg\|jpeg\|gif"'],
        \ 2: ['.hg', 'hg --cwd %s locate -I .'],
        \ },
    \ 'fallback': 'find %s -type f'
    \ }
