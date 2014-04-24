" Vim pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" Disable arrow	keys
noremap  <Up> ""
"noremap! <Up> <Esc>
noremap  <Down> ""
"noremap! <Down> <Esc>
noremap  <Left> ""
"noremap! <Left> <Esc>
noremap  <Right> ""
"noremap! <Right> <Esc>

" NERDTree
autocmd vimenter * if !argc() | NERDTree ~/devel | endif

" vim-flake8
autocmd BufWritePost *.py call Flake8()

" powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2

