set hidden
set number
set clipboard=unnamedplus
set updatetime=250
set tabstop=4
set shiftwidth=4
:set list!

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'justinmk/vim-dirvish', {'branch': 'master'}
Plug 'roginfarrer/vim-dirvish-dovish', {'branch': 'main'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'pablopunk/sunset.vim'
Plug 'kristijanhusak/vim-dirvish-git'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
call plug#end()

set termguicolors
colorscheme sunset
syntax enable

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

let g:dirvish_git_show_ignored = 1

let g:dirvish_git_indicators = {
\ 'Modified'  : '*',
\ 'Staged'    : '+',
\ 'Untracked' : '_',
\ 'Renamed'   : '~',
\ 'Unmerged'  : '!',
\ 'Ignored'   : '-',
\ 'Unknown'   : '?'
\ }

nmap <Leader>gn <Plug>GitGutterNextHunk
nmap <Leader>gp <Plug>GitGutterPrevHunk

nnoremap <C-s> :Ag!<Cr>
nnoremap <C-g> :Commits!<Cr>
