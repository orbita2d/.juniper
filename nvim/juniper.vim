" used vim-dim as a template

highlight clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "juniper"

" syntax
highlight SpecialKey     ctermfg=4
highlight TermCursor     cterm=reverse
highlight NonText        ctermfg=12
highlight Directory      ctermfg=4
highlight ErrorMsg       ctermfg=15 ctermbg=1
highlight IncSearch      cterm=reverse
highlight MoreMsg        ctermfg=2
highlight ModeMsg        cterm=bold
highlight Question       ctermfg=2
highlight Title          ctermfg=13
highlight WarningMsg     ctermfg=1
highlight WildMenu       ctermfg=0 ctermbg=11
highlight Conceal        ctermfg=7 ctermbg=7
highlight SpellBad       ctermbg=1
highlight SpellRare      ctermbg=5
highlight SpellLocal     ctermbg=6
highlight PmenuSbar      ctermbg=8
highlight PmenuThumb     ctermbg=0
highlight CursorColumn   ctermbg=7
highlight CursorLine     cterm=underline
highlight MatchParen     ctermbg=8 cterm=underline
highlight Constant       ctermfg=10
highlight Special        ctermfg=13
highlight Identifier     cterm=NONE ctermfg=14
highlight Statement      ctermfg=3
highlight PreProc        ctermfg=6
highlight Type           ctermfg=11
highlight Underlined     cterm=underline
highlight Ignore         ctermfg=15
highlight Error          ctermfg=1 
highlight Todo           ctermfg=0 ctermbg=14

" In diffs, added lines are green, changed lines are yellow, deleted lines are
" red, and changed text (within a changed line) is bright yellow and bold.
highlight DiffAdd        ctermfg=0    ctermbg=2
highlight DiffChange     ctermfg=0    ctermbg=4
highlight DiffDelete     ctermfg=0    ctermbg=1
highlight DiffText       ctermfg=0    ctermbg=11   cterm=bold

" Invert selected lines in visual mode
highlight Visual         ctermfg=NONE ctermbg=NONE cterm=inverse

" Highlight search matches in black, with a yellow background
highlight Search         ctermfg=0    ctermbg=11

" line numbers, comments, color columns, the status line, splits and sign
" columns.
highlight LineNr       ctermfg=7
highlight CursorLineNr ctermfg=7
highlight Comment      ctermfg=7 
highlight ColorColumn  ctermfg=7    ctermbg=8
highlight Folded       ctermfg=7    ctermbg=8
highlight FoldColumn   ctermfg=7    ctermbg=8
highlight Pmenu        ctermfg=15   ctermbg=8
highlight PmenuSel     ctermfg=7    ctermbg=15
highlight SpellCap     ctermfg=7    ctermbg=8
highlight StatusLine   ctermfg=15   ctermbg=8    cterm=bold
highlight StatusLineNC ctermfg=7    ctermbg=8    cterm=NONE
highlight VertSplit    ctermfg=7    ctermbg=8    cterm=NONE
highlight SignColumn                ctermbg=8

highlight Include ctermfg=3

highlight Class ctermfg=9

highlight link DimFzfFg     Normal
highlight link DimFzfBg     Normal
highlight link DimFzfFgPlus PmenuSel
highlight link DimFzfBgPlus PmenuSel
highlight link DimFzfInfo   Comment

highlight DimFzfHl      ctermfg=2
highlight DimFzfPrompt  ctermfg=12
highlight DimFzfPointer ctermfg=1
highlight DimFzfMarker  ctermfg=9

" in tabs selected tab is same colour as editor bg
highlight TabLine     ctermfg=7 ctermbg=8 cterm=NONE
highlight TabLineSel  ctermfg=15 ctermbg=0 cterm=NONE
highlight TabLineFill ctermfg=7 ctermbg=8 cterm=NONE

let g:fzf_colors = { 'fg':      ['fg', 'DimFzfFg'],
                   \ 'bg':      ['bg', 'DimFzfBg'],
                   \ 'hl':      ['fg', 'DimFzfHl'],
                   \ 'fg+':     ['fg', 'DimFzfFgPlus'],
                   \ 'bg+':     ['bg', 'DimFzfbgPlus'],
                   \ 'hl+':     ['fg', 'DimFzfHl'],
                   \ 'info':    ['fg', 'DimFzfInfo'],
                   \ 'prompt':  ['fg', 'DimFzfPrompt'],
                   \ 'pointer': ['fg', 'DimFzfPointer'],
                   \ 'marker':  ['fg', 'DimFzfMarker']}
