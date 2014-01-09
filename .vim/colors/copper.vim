" Cu3PO42's vim color scheme - Yet Another Dark ColorScheme
" Colors in use:
" Background gray: #272822
" Comment gray: gray
" Function petrol: #56B5C6
" Statement orange: #FD9D42
" Type yellow-ish: #FECD6B
" Number blue: #6383CE

let s:Background_gray=#272822
let s:comment_gray=gray
let s:petrol=#56B5C6
let s:dark_orange=#FD9D42
let s:light_orange=#FECD6B
let s:blue=#6383CE

set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name='copper'


hi link LineNr Function
hi Normal guibg=#272822 guifg=white gui=NONE
hi Comment guifg=gray
hi Function guifg=#56B5C6
hi Statement guifg=#FD9D42
hi Type guifg=#FECD6B
hi Number guifg=#6383CE
