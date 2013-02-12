execute pathogen#infect()
syntax on
filetype plugin indent on

au FileType javascript set dictionary+=$HOME/.vim/dict/node.dict

syntax enable

set background=dark
colorscheme solarized

set guifont=Inconsolata-g:h11

set vb t_vb=

set autoread

"vimrc edit/reload mappings
nmap  <silent> <Leader>ve  :e ~/.vimrc<CR>
nmap  <silent> <Leader>vr  :so ~/.vimrc<CR>

for f in split(glob('~/.vim/config/general/*.vim'), '\n')
  exe 'source' f
endfor

for f in split(glob('~/.vim/config/plugin/*.vim'), '\n')
  exe 'source' f
endfor
