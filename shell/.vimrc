" Based on CSS WIzardry's .vimrc
" http://csswizardry.com/2014/06/vim-for-people-who-think-things-like-vim-are-weird-and-hard/

" Syntax highlighting

" Enable syntax highighting
syntax enable
" 256 colours, please
set t_Co=256


" Tabs, indentation and lines

filetype plugin indent on
" 4 spaces please
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
" Round indent to nearest multiple of 4
set shiftround
" No line-wrapping
set nowrap

" Interactions

" Start scrolling slightly before the cursor reaches an edge
set scrolloff=3
set sidescrolloff=5
" Scroll sideways a character at a time, rather than a screen at a time
set sidescroll=1
" Backspace behaviour
set nocompatible
set backspace=2

" Visual decorations

" Show status line
set laststatus=2
" Show what mode you’re currently in
set showmode
" Show what commands you’re typing
set showcmd
" Allow modelines
set modeline
" Show current line and column position in file
set ruler
" Show file title in terminal tab
set title
