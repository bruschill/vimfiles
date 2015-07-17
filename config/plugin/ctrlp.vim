let g:ctrlp_cmd = 'CtrlPMixed'
"setting local working directory
let g:ctrlp_working_path_mode = 'a'

" jump to file already open
let g:ctrlp_switch_buffer = 'Et'

" enable per-session cashing
let g:ctrlp_use_caching = 1
let g:ctrlp_cache_dir = $HOME.'/.vim/.ctrlp'

" persist cache
let g:ctrlp_clear_cache_on_exit = 1

" follow symlinks
let g:ctrlp_follow_symlinks = 1

" custom user command
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden --ignore .git --ignore .svn --ignore .hg --ignore .DS_Store --ignore "**/*.pyc" -g ""'

" cpsm plugin config
let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}

let g:ctrlp_extensions = ['tag', 'mixed']
