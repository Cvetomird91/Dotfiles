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

set softtabstop=0
set noexpandtab
set shiftwidth=4

syntax enable
:imap  [[ <ESC>
:nmap , $

command Qa qall
command Wa wall
command S w !sudo tee % > /dev/null

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic = 1
let g:airline#extensions#branch = 1
set laststatus=2

:nmap h <left>
:nmap j <right>
:nmap l <down>
:nmap k <up>

:colorscheme adam

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

" These map Enter to enter a new line without entering insert mode afterwards
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

nmap <k1> :TagbarToggle<CR>
nmap <k2> :TagbarClose<CR>
nmap <k4> :NERDTree <CR>
nmap <k5> :NERDTreeClose<CR>
nmap <k7> :set mouse=a <CR>
nmap <k8> :set mouse= <CR>

call plug#begin('~/.vim/bundle')

Plug 'https://github.com/chilicuil/conque'
Plug 'https://github.com/kien/ctrlp.vim'
Plug 'https://github.com/ekalinin/Dockerfile.vim'
Plug 'http://github.com/mattn/emmet-vim/'
Plug 'https://github.com/othree/eregex.vim'
Plug 'https://github.com/vim-scripts/matrix.vim--Yang'
Plug 'https://github.com/scrooloose/nerdcommenter'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/kien/rainbow_parentheses.vim'
Plug 'https://github.com/vim-scripts/SearchComplete'
Plug 'https://github.com/vim-scripts/sudo.vim'
Plug 'git://github.com/majutsushi/tagbar'
Plug 'https://github.com/Shougo/unite.vim.git'
Plug 'https://github.com/joonty/vdebug'
Plug 'https://github.com/bling/vim-airline'
Plug 'https://github.com/ntpeters/vim-better-whitespace'
Plug 'https://github.com/flazz/vim-colorschemes'
Plug 'https://github.com/Lokaltog/vim-easymotion'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/jistr/vim-nerdtree-tabs'
Plug 'https://github.com/junegunn/vim-plug'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-unimpaired'
Plug 'https://github.com/vim-scripts/YankRing.vim'

call plug#end()
