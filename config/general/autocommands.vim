"go
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4

"ruby//embedded ruby
au BufNewFile,BufRead *.rb,*.erb setlocal et sta ts=2 sw=2 sts=2

"vim
au BufNewFile,BufRead *.vim setlocal et sta ts=2 sw=2 sts=2
