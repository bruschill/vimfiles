"enable modified detection
let g:airline_detect_modified=1

"enable paste detection
let g:airline_detect_paste=1

"customize separators
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.branch = '⎇'

"enable syntastic integration
let g:airline#extensions#syntastic#enabled = 1

"enable tmuxline integration
let g:airline#extensions#tmuxline#enabled = 1

"small section tweaks
let g:airline_section_y=''
let g:airline_section_z='%3p%% %{g:airline_symbols.linenr}%4l%#__restore__#:%3c'
