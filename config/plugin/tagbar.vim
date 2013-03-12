let g:tabgbar_ctags_bin="ctags"
let g:tagbar_sort=0
let g:tagbar_compact=1
let g:tagbar_autoclose=1

let g:tagbar_iconchars = ['▾', '▸']

let g:tagbar_type_ruby = {'kinds' : ['m:modules',
                                    \'c:classes',
                                    \'d:describes',
                                    \'C:contexts',
                                    \'f:methods',
                                    \'F:singleton methods']}

map <Leader>rt :TagbarToggle<CR>
