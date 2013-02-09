let g:tabgbar_ctags_bin="ctags"
let g:tagbar_type_ruby = {'kinds' : ['m:modules',
                                    \'c:classes',
                                    \'d:describes',
                                    \'C:contexts',
                                    \'f:methods',
                                    \'F:singleton methods']}

map <Leader>rt :TagbarToggle<CR>
