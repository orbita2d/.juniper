from pygments.style import Style
from pygments.token import Keyword, Token, Comment, Name, String

# For the life of me I can't work out how to use the terminal colours so I'm reproducing them here.

black           = "#151719"
red             = "#ac3939"
green           = "#559933"
yellow          = "#d29e79"
blue            = "#3960ac"
magenta         = "#a14573"
cyan            = "#3986ac"
lightgray       = "#787878"

darkgray        = "#282a2e"
brightred       = "#d27979"
brightgreen     = "#97d279"
brightyellow    = "#d1ca79"
brightblue      = "#7997d2"
brightmagenta   = "#d279a6"
brightcyan      = "#79b4d2"
brightwhite     = "#c5c8c6"

class Juniper(Style):
    name = 'juniper'
    styles = {
        Token:                  f'{brightwhite}',
        Comment:                f'{lightgray}',
        Keyword:                f'{yellow}',
        Name:                   f'',
        Name.Class:             f'bold {brightyellow}',
        Name.Function:          f'{brightcyan}',
        String:                 f'{brightgreen}'
    }

    background_color = '#151719'
    highlight_color = '#282a2e'
