call plug#begin('~/.local/share/nvim/plugged')

" vaguely functional syntax highlighting
 Plug 'vim-python/python-syntax'

call plug#end()

" python-syntax options
"let g:python_highlight_all = 1
let g:python_highlight_string_formatting = 1
let g:python_highlight_string_format = 1
let g:python_highlight_indent_errors = 1
let g:python_highlight_space_errors = 1
let g:python_highlight_exceptions = 1
let g:python_highlight_builtin_funcs = 1
