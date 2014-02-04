if has("autocmd")
  "git filetype/format settings
  au BufNewFile,BufRead *.git/{,modules/**/}{COMMIT_EDIT,MERGE_}MSG set ft=gitcommit
  au Filetype gitcommit setlocal textwidth=72
  au FileType gitcommit call setpos('.', [0, 1, 1, 0])
  au FileType gitcommit startinsert
endif
