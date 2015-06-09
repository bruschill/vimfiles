if has('vim_starting')
  set nocompatible
  set nosmd

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

"plugins
" required
NeoBundleFetch 'Shougo/neobundle.vim'

" general
NeoBundle 'Valloric/YouCompleteMe.git', {
  \'build': {
    \'mac': 'sh -c "./install.sh"'
  \}
\}

NeoBundle 'Shougo/vimproc.vim.git', {
  \'build': {
    \'mac': 'sh -c "make clean && make"'
  \}
\}

NeoBundle 'Shougo/unite.vim'
NeoBundle 'xolox/vim-easytags'
NeoBundle 'xolox/vim-misc'
NeoBundle 'tpope/vim-endwise.git'
NeoBundle 'tpope/vim-surround.git'
NeoBundle 'tpope/vim-repeat.git'
NeoBundle 'tpope/vim-eunuch.git'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'rking/ag.vim'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'regedarek/ZoomWin.git'
NeoBundle 'bling/vim-airline'

" tmux-related
NeoBundle 'edkolev/tmuxline.vim'
NeoBundle 'christoomey/vim-tmux-navigator.git'
NeoBundle 'tmux-plugins/vim-tmux'
NeoBundle 'tmux-plugins/vim-tmux-focus-events'

" colors
NeoBundle 'altercation/vim-colors-solarized.git'

" syntax
"   ruby
NeoBundle 'vim-ruby/vim-ruby.git'
NeoBundle 'tpope/vim-rails.git'
NeoBundle 'Keithbsmiley/rspec.vim.git'
NeoBundle 'sunaku/vim-ruby-minitest'
NeoBundle 'cakebaker/scss-syntax.vim'

"   javascript
NeoBundle 'pangloss/vim-javascript.git'

NeoBundle 'othree/javascript-libraries-syntax.vim.git'
NeoBundle 'elzr/vim-json.git'

"   go
NeoBundle 'fatih/vim-go', {
  \'build_commands': 'vim',
  \'build': {
    \'mac': "vim -c 'GoUpdateBinaries' -c 'qa!'"
  \}
\}

"   markup
NeoBundle 'othree/html5.vim.git'
NeoBundle 'hail2u/vim-css3-syntax.git'
NeoBundle 'plasticboy/vim-markdown.git'

"   other
NeoBundle 'tpope/vim-git'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

set t_Co=256
set background=dark
syntax on
color solarized

set guifont=Source\ Code\ Pro\ for\ Powerline:h12

"general
set encoding=utf-8
set autoread
set vb t_vb=
set hidden
set nowrap
set history=10000
set cursorline
set switchbuf=useopen
set backspace=indent,eol,start
set timeout
set timeoutlen=350
set ttimeoutlen=200

"statusline
set laststatus=2

"tab settings
set ai
set et
set sta
set ts=2
set sw=2
set sts=2

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

"wildmenu
set wildmenu
set matchtime=3
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
set wildignore+=*.swp,*~,._*

"listchars
set list
set lcs=trail:•

set dir=~/.vim/.temp

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
