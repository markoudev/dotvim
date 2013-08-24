" quickly open todo-list
command! TODO :e ~/todo.md

" autoload plugins in ~/.vim/bundle
execute pathogen#infect()

" Argh, I keep using :x to save my files... but then I lost my buffers!
" Disable the whole command. Now let's hope I don't adopt :wq
cabbrev x <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? '' : 'x')<CR>

set nocompatible                " explicitely get out of vi-compatible mode
filetype plugin indent on       " load filetype plugins/indent settings
set background=dark             " we use a dark background
syntax on                       " syntax highlighting, can't live without it
set autoindent                  " auto indent new lines

set number                      " show line numbers and color them red
highlight LineNr ctermfg=red

set history=1000                " let's have a big history
set undolevels=1000             " and lots of undolevels

set hlsearch                    " highlight search mathes
set ttyfast                     " got a fast terminal

set showmatch                   " show matching braces and color them
highlight MatchParen cterm=bold ctermfg=black ctermbg=white

" properly add tabs
set expandtab
set shiftwidth=2
set softtabstop=2

" show command being typed
set showcmd

" ctrl+hjkl move windows shortcut
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" I want rspec to be the makeprg
set makeprg=bundle\ exec\ rspec

" Use space to (un)fold
nnoremap <Space> za

