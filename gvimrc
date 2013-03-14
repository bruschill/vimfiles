"gui menu/scrollbar removal
set go-=m
set go-=T
set go-=r
set go-=L

"gvimrc edit/reload mappings
nmap  <silent> <Leader>ve  :e ~/.gvimrc<CR>
nmap  <silent> <Leader>vr  :so ~/.gvimrc<CR>

if has("gui_macvim")
  "map Command + Shift + t to new tab
  "map Command + t to CtrlP
  macmenu &File.New\ Tab key=<D-S-t>

  if has("gui_running")
    map <D-t> :CtrlP<CR>
    imap <D-t> <ESC>:CtrlP<CR>
  endif

  "map Command + P to nothing
  macmenu &File.Print key=<nop>
endif

if has("gui_running")
  if has("autocmd")
    " Automatically resize splits when resizing MacVim window
    autocmd VimResized * wincmd =
  endif
endif
