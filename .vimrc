execute pathogen#infect()

set nu
set hlsearch
set incsearch
set ignorecase
set tabstop=4
set smartcase
nnoremap <silent> <Space> :nohlsearch<CR>

" set list
" set listchars=tab:>.,trail:.,extends:#,nbsp:.

syntax enable
:imap  [[ <ESC>
:nmap , $

command Qa qall
command Wa wall
command S w !sudo tee % > /dev/null

let g:airline#extensions#tabline#enabled = 1
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1
set laststatus=2

:nmap h <left>
:nmap j <right>
:nmap l <down>
:nmap k <up>

:colorscheme 256-grayvim

augroup gzip
 autocmd!
 autocmd BufReadPre,FileReadPre *.gz set bin
 autocmd BufReadPost,FileReadPost   *.gz '[,']!gunzip
 autocmd BufReadPost,FileReadPost   *.gz set nobin
 autocmd BufReadPost,FileReadPost   *.gz execute ":doautocmd BufReadPost " . expand("%:r")
 autocmd BufWritePost,FileWritePost *.gz !mv <afile> <afile>:r
 autocmd BufWritePost,FileWritePost *.gz !gzip <afile>:r
 autocmd FileAppendPre      *.gz !gunzip <afile>
 autocmd FileAppendPre      *.gz !mv <afile>:r <afile>
 autocmd FileAppendPost     *.gz !mv <afile> <afile>:r
 autocmd FileAppendPost     *.gz !gzip <afile>:r
augroup END

