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

" Enable Golang plugins
" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

" Enable go fmt
autocmd FileType go autocmd BufWritePre <buffer> Fmt

" Enable golint
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow
