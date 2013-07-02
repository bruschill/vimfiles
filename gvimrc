"gui menu/scrollbar removal
set go-=m
set go-=T
set go-=r
set go-=L

if has("gui_macvim")
  "map Command + Shift + t to new tab
  "map Command + t to CtrlP
  macmenu &File.New\ Tab key=<D-S-t>

  "map Command + P to nothing
  macmenu &File.Print key=<nop>
endif

if has("gui_running")
  if has("autocmd")
    " Automatically resize splits when resizing MacVim window
    autocmd VimResized * wincmd =
  endif
endif
