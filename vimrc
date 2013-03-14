runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

set background=dark
colorscheme solarized

set guifont=Consolas:h13

"general
set encoding=utf-8
set autoread
set vb t_vb=
set nocompatible
set hidden
set nowrap
set history=10000
set cursorline
set switchbuf=useopen
set scrolloff=3
set backspace=indent,eol,start
set timeout
set timeoutlen=1000
set ttimeoutlen=100

"tab settings
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent

"searching
set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase

"line numbers
set number
set ruler
set numberwidth=2

"listchars
set list
set listchars=""
set listchars=tab:\ \
set listchars+=trail:.
set listchars+=extends:>
set listchars+=precedes:<

"wildmenu
set wildmenu
set matchtime=3
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*.swp,*~,._*

"turning of swap/backup files
set nobackup
set nowritebackup
set noswapfile

"setting tags directory
set tags=~/.vim/tags

"autosave when focus lost
if has("autocmd")
  if exists("g:autosave_on_blur")
    au FocusLost * silent! wall
  endif
endif

"remap mapleader
let mapleader=","

"vimrc edit/reload mappings
nmap  <silent> <Leader>ve  :e ~/.vimrc<CR>
nmap  <silent> <Leader>vr  :so ~/.vimrc<CR>

for f in split(glob('~/.vim/config/general/*.vim'), '\n')
  exe 'source' f
endfor

for f in split(glob('~/.vim/config/plugin/*.vim'), '\n')
  exe 'source' f
endfor

au FileType javascript set dictionary+=$HOME/.vim/dict/node.dict
