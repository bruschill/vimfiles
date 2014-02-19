" SETTINGS
" prompt
let g:unite_prompt = '» '

" filters
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])

" grep source
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--line-numbers --nocolor --nogroup -S'
let g:unite_source_grep_recursive_opt = ''

"  settings
let g:unite_enable_short_source_names = 1

" fuzzy find settings
let g:unite_winheight = 10
let g:unite_split_rule = 'botright'

" MAPPINGS
nnoremap <C-p> :Unite -start-insert file_rec/async:!<cr>
nnoremap <leader>f :Unite grep:"." <cr>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction
