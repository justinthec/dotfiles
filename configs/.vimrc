set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'rakr/vim-one'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'pangloss/vim-javascript'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
set background=dark
colorscheme one

if has("user_commands")
	command! -bang -nargs=? -complete=file W w<bang> <args>
endif

" Start NERDTree on vim startup if no args
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Most of the following comes from http://dougblack.io/words/a-good-vimrc.html
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set relativenumber
set hidden

" Key re-mappings
inoremap jk <esc>
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <C-N> :call NumberToggle()<cr>
nnoremap <C-F> :NERDTreeFind<cr>
nnoremap <C-F><C-F> :NERDTreeToggle<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>

" CtrlP configs
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_show_hidden = 1
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co']
let g:ctrlp_max_files=0

" NERDTree configs
let NERDTreeShowHidden = 1

" Supertab configs
let g:SuperTabDefaultCompletionType = "<c-n>"

" Relative number toggle function
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc
