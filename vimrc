

set nocompatible

syntax enable
filetype plugin on

set number
set hlsearch

" enable fuzzy file find
" file commands will look in subdirectories and in subsubdirectories
set path+=**

" enable a menu to go though a file list when multiple files match
set wildmenu
set wildmode=full

" choose either this or previous setting
"set wildmode=longest,list

" make modified buffer hidden
set hidden

" replace tab with 4 spaces
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

" indentation
set autoindent
set smartindent

" make indentation 4 spaces e.g. for <<,>>
set shiftwidth=4

command! MakeTags !ctags -R .

" tweaks for file browsing
let g:netrw_banner=0 		" disable netrw banner
let g:netrw_browse_split=4	" open in prior window
let g:netrw_altv=1		" open splits to the right
let g:netrw_liststyle=3		" tree view


" make vim to remember more commands
set history=200

