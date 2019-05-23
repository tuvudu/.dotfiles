call plug#begin('~/.config/nvim/bundle')
  Plug 'scrooloose/nerdtree'
  Plug 'morhetz/gruvbox'
  Plug 'tomtom/tcomment_vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'w0rp/ale'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'sonph/onehalf', {'rtp': 'vim/'}
call plug#end()

let mapleader = ','

" Theme and Styling
syntax on
set termguicolors
set background=dark
" colorscheme gruvbox
" set t_Co=256
set cursorline
colorscheme onehalflight
let g:airline_theme='onehalfdark'

" Show linenumbers
set number
" set ruler
set list
set list listchars=tab:▸\ ,space:·,trail:·,precedes:←,extends:→,eol:↲,nbsp:␣
set linespace=3
" Set Proper Tabs
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set si
"search
set ignorecase
set smartcase

" Enable highlighting of the current line
set cursorline

" turn off backup and swap file
set nobackup
set nowb
set noswapfile
set backupdir=~/tmp,/tmp
set backupcopy=yes
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=/tmp

autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Enable ESLint only for JavaScript.
let b:ale_linters = ['eslint']
let g:ale_sign_error = '✘'
let g:ale_sign_warning = 'Δ'

" enable tab airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#show_buffers = 0
" let g:airline_theme = 'gruvbox'

"""""""""""""""""""""""""""""""""""""
" Mappings configurationn
"""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>b :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
map <C-m> :TagbarToggle<CR>
" comment line
noremap <silent> <Leader>cc :TComment<CR>

" config fzf
map ; :Files<CR>
" config for tabbar airline
nmap <C-l> :tabnext<CR>
nmap <C-h> :tabprevious<CR>
nmap <C-q> :tabclose<CR>
" resize pane
nmap <A-Up> :resize +5<CR>
nmap <A-Down> :resize -5<CR>
nmap <A-Right> :vertical resize +5<CR>
nmap <A-Left> :vertical resize -5<CR>
