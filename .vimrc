 .vimrc                                                                                                                                                           < buffers 
execute pathogen#infect()

set nu
set hlsearch
set incsearch
set ignorecase
set tabstop=4
nnoremap <silent> <Space> :nohlsearch<CR>

" set list
" set listchars=tab:>.,trail:.,extends:#,nbsp:.

syntax enable
:imap jj <ESC>
:nmap , $ 

command Qa qall
command Wa wall

let g:airline#extensions#tabline#enabled = 1 
let g:airline_enable_branch     = 1 
let g:airline_enable_syntastic  = 1 
set laststatus=2

:nmap h <left>
:nmap j <right>
:nmap k <down>
:nmap l <up>

:map <F9> :e sudo:/var/www/laravel/
:colorscheme mustang

" :colorscheme 256-grayvim
" :colorscheme vexorian
