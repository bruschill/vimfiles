if has('vim_starting')
  set nocompatible

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

"plugins
" required
NeoBundleFetch 'Shougo/neobundle.vim'

" general
NeoBundle 'Valloric/YouCompleteMe.git'
NeoBundle 'Shougo/vimproc.vim.git'
NeoBundle 'Shougo/unite.vim.git'
NeoBundle 'xolox/vim-easytags'
NeoBundle 'xolox/vim-misc'
NeoBundle 'tpope/vim-endwise.git'
NeoBundle 'tpope/vim-surround.git'
NeoBundle 'tpope/vim-repeat.git'
NeoBundle 'tpope/vim-eunuch.git'
NeoBundle 'tpope/vim-rails.git'
NeoBundle 'rking/ag.vim'
NeoBundle 'marijnh/tern_for_vim.git'
NeoBundle 'christoomey/vim-tmux-navigator.git'
NeoBundle 'scrooloose/nerdcommenter.git'
NeoBundle 'naonya3/vim-kwbd.git'
NeoBundle 'regedarek/ZoomWin.git'
NeoBundle 'bling/vim-airline'

" colors
NeoBundle 'altercation/vim-colors-solarized.git'

" syntax
NeoBundle 'plasticboy/vim-markdown.git'
NeoBundle 'vim-ruby/vim-ruby.git'
NeoBundle 'hail2u/vim-css3-syntax.git'
NeoBundle 'elzr/vim-json.git'
NeoBundle 'Keithbsmiley/rspec.vim.git'
NeoBundle 'pangloss/vim-javascript.git'
NeoBundle 'othree/javascript-libraries-syntax.vim.git'
NeoBundle 'othree/html5.vim.git'
NeoBundle 'jelera/vim-javascript-syntax.git'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

set background=dark
syntax on
color solarized

set guifont=Source\ Code\ Pro:h12

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
set backspace=indent,eol,start
set timeout
set timeoutlen=250
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
set relativenumber
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

set dir=~/.vim/.temp

set shortmess+=I

set completeopt-=preview

try
  set shortmess+=c
catch /E539: Illegal character/
endtry

"setting tags directory
set tags=~/.vim/tags

for f in split(glob('~/.vim/config/general/*.vim'), '\n')
  exe 'source' f
endfor

for f in split(glob('~/.vim/config/plugin/*.vim'), '\n')
  exe 'source' f
endfor
