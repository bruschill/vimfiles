" SETTINGS
" unite grep source
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--line-numbers --nocolor --nogroup -S'
  let g:unite_source_grep_recursive_opt = ''
elseif executable('pt')
  let g:unite_source_grep_command = 'pt'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor'
  let g:unite_source_grep_recursive_opt = ''
elseif executable('ack-grep')
  let g:unite_source_grep_command = 'ack-grep'
  let g:unite_source_grep_default_opts = '--no-heading --no-color -a -H'
  let g:unite_source_grep_recursive_opt = ''
endif

" start insert settings
let g:unite_enable_short_source_names = 1

" fuzzy find settings
call unite#filters#matcher_default#use(['matcher_fuzzy'])
let g:unite_winheight = 10
let g:unite_split_rule = 'botright'

" MAPPINGS
nnoremap <C-p> :Unite -start-insert file_rec/async:!<cr>
nnoremap <leader>f :Unite grep:"." <cr>

