" SETTINGS
call unite#custom#profile('default', 'context', {
      \ 'winheight': 10,
      \ 'prompt': '» ',
      \ 'prompt-direction': 'below',
      \ 'direction': 'botright',
      \ 'short-source-names': 1
\})

" ignores
call unite#custom_source('file,file_rec,file_rec/async,grep',
      \ 'ignore_pattern', join([
      \ '\.git$',
      \ '\.bundle/',
      \ '\.rubygems/',
      \ 'node_modules/',
      \ 'tmp',
      \ 'vendor/',
      \ '\.png',
      \ '\.jpg',
      \ '\.jpeg',
      \ '\.svg'
      \ ], '\|'))

" filters
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])

" grep source
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--line-numbers --nocolor --nogroup -S'
let g:unite_source_grep_recursive_opt = ''

" fuzzy find settings
let g:unite_source_rec_async_command = 'ag --nocolor --nogroup -g ""'
let g:unite_source_rec_max_cache_files = 200000

" MAPPINGS
nnoremap <C-p> :Unite -start-insert file_rec/async:!<cr>
nnoremap <leader>f :Unite grep:"." <cr>

autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  let b:SuperTabDisabled=1

  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction
