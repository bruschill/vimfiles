"setting local working directory
let g:ctrlp_working_path_mode = 'a'

" jump to file already open
let g:ctrlp_switch_buffer = 'Et'

" enable per-session cashing
let g:ctrlp_use_caching = 1
let g:ctrlp_cache_dir = $HOME.'/.ctrlp'

" persist cache
let g:ctrlp_clear_cache_on_exit = 0

"cpsm plugin config
let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
