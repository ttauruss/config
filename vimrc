
source ~/.vimrc_vundle

syntax on

" no bell or flash
set vb t_vb=

set hlsearch
set ignorecase
set smartcase
set incsearch

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" use crunchbag colorscheme (I changed Normal to white)
colorscheme ttauruss

set autoindent
set smartindent

set pastetoggle=<f6> " toggle it on when pasting from clipboard to keep the indentation

set diffopt+=iwhite
set diffopt+=horizontal

set shellcmdflag=-lc

set hidden

set tags=tags

set laststatus=0 " set to 2 to enable
set statusline=\ %n\ %m%=\ %5l\ %L\ %4v\

set wildmode=longest,list,full
set wildmenu
set history=200

au BufRead,BufNewFile *.py set ts=4 sts=4 sw=4 " for python files indentation is 2 spaces
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

let mapleader=","
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

noremap <leader>n nzz
noremap <leader>N Nzz

noremap \ ,

nnoremap - [c
nnoremap + ]c
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-}> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
map <F5> :buffers<CR>:buffer<Space>
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123$,.cpp,<CR>
map <C-j> :update<CR>:!clear<CR>:!g++ -std=c++11 -Wall -Werror -Wno-sign-compare % > /tmp/make.out 2>&1 && ./a.out<CR>

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
