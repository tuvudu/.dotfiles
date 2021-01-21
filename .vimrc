set number
set nocompatible
syntax enable

set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8
set title
set autoindent
set background=dark
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10

"let loaded_matchparen = 1
set shell=fish
set list listchars=tab:▸\ ,space:·,trail:·,precedes:←,extends:→,eol:↲,nbsp:␣
set linespace=3 tabstop=2 shiftwidth=2 smarttab expandtab si ignorecase smartcase cursorline nobackup nowb noswapfile

" turn off backup and swap file
set backupdir=~/tmp,/tmp
set backupcopy=yes
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=/tmp

" Add asterisks in block comments
set formatoptions+=r
set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescript
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
" Flow
au BufNewFile,BufRead *.flow set filetype=javascript
"-------------------------------------------------------------------------------
" Dein
"-------------------------------------------------------------------------------

if &compatible
  set nocompatible
endif

let s:dein_dir = expand('~/.cache/dein')

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  let g:rc_dir = expand('~/.vim/rc')
  let s:toml = g:rc_dir . '/dein_plugin.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy_plugin.toml'
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
