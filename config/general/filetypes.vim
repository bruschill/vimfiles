if has("autocmd")
  " In Makefiles, use real tabs, not tabs expanded to spaces
  au FileType make setlocal noexpandtab

  " make Python follow PEP8 for whitespace ( http://www.python.org/dev/peps/pep-0008/ )
  au FileType python setlocal softtabstop=4 tabstop=4 shiftwidth=4

  au FileType eruby setlocal softtabstop=4 tabstop=4 shiftwidth=4

  "git filetype/format settings
  au BufNewFile,BufRead *.git/{,modules/**/}{COMMIT_EDIT,MERGE_}MSG set ft=gitcommit
  au Filetype gitcommit setlocal textwidth=72
  au FileType gitcommit call setpos('.', [0, 1, 1, 0])
  au FileType gitcommit startinsert
endif
