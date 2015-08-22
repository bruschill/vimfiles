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
NeoBundle 'Valloric/YouCompleteMe', {
  \'build': {
    \'mac': 'sh -c "./install.sh --gocode-completer"'
  \}
\}

NeoBundle 'Shougo/vimproc.vim', {
  \'build': {
    \'mac': 'sh -c "make clean && make"'
  \}
\}

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

" ctrlp-related
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'nixprime/cpsm', {
  \'build': {
    \'mac': 'sh -c "./install.sh"'
  \}
\}

" tmux-related
NeoBundle 'edkolev/tmuxline.vim'
NeoBundle 'christoomey/vim-tmux-navigator.git'
NeoBundle 'tmux-plugins/vim-tmux'
NeoBundle 'tmux-plugins/vim-tmux-focus-events'

" colors
NeoBundle 'altercation/vim-colors-solarized.git'
NeoBundle 'NLKNguyen/papercolor-theme'

" syntax
"   ruby
NeoBundle 'vim-ruby/vim-ruby.git'
NeoBundle 'tpope/vim-rails.git'
NeoBundle 'Keithbsmiley/rspec.vim.git'
NeoBundle 'sunaku/vim-ruby-minitest'
NeoBundle 'cakebaker/scss-syntax.vim'

"   javascript
NeoBundleLazy 'pangloss/vim-javascript.git', {'autoload':{'filetypes':['javascript']}}
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
NeoBundleLazy 'othree/javascript-libraries-syntax.vim.git', {'autoload':{'filetypes':['javascript']}}
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
NeoBundle 'jystic/thrift.vim'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

set t_Co=256
syntax on
set background=dark
color solarized

set guifont=Source\ Code\ Pro:h12

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
set nolist

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
