"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|
"

" ---------------------------
" Base

" Show syntax highlight
syntax on

" Indentation
set autoindent
set cindent

" Replace tabs with spaces
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" When you hit tab at start of line, indent added according to shiftwidth value
set smarttab

" Mouse
set mouse=a

" Auto reload changed files
set autoread

" Extra stuff
set encoding=utf-8

" Set grep to always generate a file-name
set grepprg=grep\ -nH\ $*

" ---------------------------
" Display

" Line management
set number
set cursorline

" Mute error bell
set novisualbell

" Enable display whitespace characters
set list

" Setting up how to display whitespace characters
set listchars=tab:⇥\ ,trail:·,extends:⋯,precedes:⋯,nbsp:~

" Numbers of rows to keep to the left and to the right off the screen
set scrolloff=5

" Numbers of columns to keep to the left and to the right off the screen
set sidescrolloff=5

" Vim will move to the previous/next line after reaching first/last char in
" the line with this commnad (you can add 'h' or 'l' here as well)
" <,> stand for arrows in command mode and [,] arrows in visual mode
set whichwrap=b,s,<,>,[,],

" ---------------------------
" Search

" Add the g flag to search/replace by default
set gdefault

" Highlight search results
set hlsearch

" Ignore case in search patterns
set ignorecase

" Override the 'ignorecase' option if the search patter ncontains upper case characters
set smartcase

" Live search. While typing a search command, show where the pattern
set incsearch

" Disable higlighting search result on Enter key
nnoremap <silent> <cr> :nohlsearch<cr><cr>

" Show matching brackets
set showmatch

" Make < and > match as well
set matchpairs+=<:>

" Ignore case for file path
set wildignorecase

" ---------------------------
" Tabs

" Open new tab
nmap <silent><leader>to :tabnew .<CR>

" ---------------------------
" Folding

" No fold closed at open file
set foldlevelstart=99
set nofoldenable

" Keymap to toggle folds with space
nmap <space> za

" ---------------------------
" Theme

" Up to 256 colors
set t_Co=256

" ---------------------------
" Local config

if filereadable(expand('~/.vimrc-local'))
    exe 'source' '~/.vimrc-local'
endif
