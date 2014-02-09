" general
let g:syntastic_check_on_open=1
let g:syntastic_quiet_messages={'level': 'warnings'}
let g:syntastic_auto_loc_list=2

" sh
let g:syntastic_sh_checkers=['sh', 'shellcheck']

" javascript
let g:syntastic_javascript_checkers=['jshint']

" json
let g:syntastic_json_checkers=['jsonlint', 'jsonval']

" html
let g:syntastic_html_checkers=['jshint', 'tidy']
let g:syntastic_html_tidy_ignore_errors = [
    \"trimming empty <i>",
    \"trimming empty <span>",
    \"<input> proprietary attribute \"autocomplete\"",
    \"proprietary attribute \"role\"",
    \"proprietary attribute \"hidden\"",
    \"proprietary attribute \"ng\"",
    \"proprietary attribute \"data-ng\"",
    \"is not recognized!"
    \]

" css
let g:syntastic_css_checkers=['csslint']

" ruby
let g:syntastic_ruby_checkers=['mri']

" erb
let g:syntastic_eruby_checkers=['ruby']
