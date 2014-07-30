execute pathogen#infect()

set nu
syntax enable
:imap jj <ESC>
:nmap , $

command Qa qall
command Wa wall

let g:airline#extensions#tabline#enabled = 1

:nmap h <left>
:nmap j <right>
:nmap k <down>
:nmap l <up>
