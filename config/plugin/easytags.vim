"general config
let g:easytags_cmd='/usr/local/bin/ctags'
let g:easytags_languages = {
\ 'language': {
\    'cmd': g:easytags_cmd,
\    'args':[],
\    'fileoutput_opt': '--fields=+l'
\  }
\}

let g:easytags_by_filetype='~/.vim/tags'

let g:easytags_updatetime_warn=0
let g:easytags_resolve_links=1

"update tags after save
let g:easytags_events = ['BufWritePost']
