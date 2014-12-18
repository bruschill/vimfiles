" SETTINGS
" general
let g:unite_data_directory = '~/.vim/.unite_cache'

call unite#custom#profile('default', 'context', {
      \ 'winheight': 10,
      \ 'prompt': '» ',
      \ 'prompt-direction': 'below',
      \ 'direction': 'botright',
      \ 'short-source-names': 1
\})

" ignores
call unite#custom#source('file,file_rec,file_rec/async,grep',
      \ 'ignore_globs', ['.bundle/**', '.rubygems/**', 'log/**', 'tmp/**', 'temp/**', '.log/**', 'bundle/**', 'vendor/**', 'node_modules/**', '**/*.png', '**/*.jpg', '**/*.jpeg', '**/*.svg', '**/*.psd', '**/*.gif', '**/*.ico', '**/*.woff', '**/*.eot', '**/*.ttf'])

" filters
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])

" fuzzy find settings
let g:unite_source_rec_async_command = 'ag --nocolor --nogroup -g ""'

" grep source
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts =
      \ '-i --line-numbers --nocolor --nogroup --hidden --ignore ' .
      \ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''log'''
let g:unite_source_grep_recursive_opt = ''

" mappings
nnoremap <C-p> :Unite -start-insert file_rec/async<CR>
nnoremap <leader>f :Unite grep:"."<cr>

autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  let b:SuperTabDisabled=1

  imap <buffer> <C-j> <Plug>(unite_select_next_line)
  imap <buffer> <C-k> <Plug>(unite_select_previous_line)
endfunction
