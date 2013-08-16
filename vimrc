" quickly open todo-list
command TODO :e ~/todo.md

" autoload plugins in ~/.vim/bundle
execute pathogen#infect()
filetype plugin indent on

" properly add tabs
set expandtab
set shiftwidth=2
set softtabstop=2

" show command being typed
set showcmd

" syntax highlighting, I like it
syntax on

" keep indention
set autoindent

" ctrl+hjkl move windows shortcut
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" line numbers
set number
highlight LineNr ctermfg=red

" highlight the searchterms
set hlsearch

" history and undo
set history=1000
set undolevels=1000

" show matching braces
set showmatch
highlight MatchParen cterm=bold ctermfg=black ctermbg=white

" I want rspec to be the makeprg
set makeprg=bundle\ exec\ rspec

