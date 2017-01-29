set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'honza/dockerfile.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nvie/vim-flake8'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'fatih/vim-go'
"Plugin 'python-mode/python-mode'

call vundle#end()
filetype plugin indent on

syntax on
syntax enable


set background=dark
colorscheme monokai

" Disable arrow	keys
"noremap  <Up> ""
"noremap! <Up> <Esc>
"noremap  <Down> ""
"noremap! <Down> <Esc>
"noremap  <Left> ""
"noremap! <Left> <Esc>
"noremap  <Right> ""
"noremap! <Right> <Esc>

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd vimenter * if !argc() | NERDTree ~/devel | endif
map <C-n> :NERDTreeToggle<CR>

" vim-flake8
autocmd BufWritePost *.py call Flake8()

" powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2

" Golang
" Enable syntax-highlighting for Functions, Methods and Structs
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

"Enable goimports to automatically insert import paths instead of gofmt
let g:go_fmt_command = "goimports"

" Disable markdown folding
let g:vim_markdown_folding_disabled=1

" This beauty remembers where you were the last time you edited the file, and returns to the same position.
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" Highlight end of line whitespace.
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

" More syntax highlighting.
let python_highlight_all = 1

" Smart indenting
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" jedi-vim: Do not starts the completion if you type dot.
let g:jedi#popup_on_dot = 0
" Displays function call signatures in insert mode on command line.
let g:jedi#show_call_signatures = "2"

" Use F8/Shift-F8 to add/remove a breakpoint (pdb.set_trace)
" Totally cool.
python3 << EOF
import vim
def SetBreakpoint():
    import re
    nLine = int( vim.eval( 'line(".")'))

    strLine = vim.current.line
    strWhite = re.search( '^(\s*)', strLine).group(1)

    vim.current.buffer.append(
       "%(space)simport ipdb; ipdb.set_trace()  %(mark)s Breakpoint" %
         {'space':strWhite, 'mark': '#'}, nLine - 1)

vim.command('map <f8> :py SetBreakpoint()<cr>')

def RemoveBreakpoints():
    import re

    nCurrentLine = int( vim.eval( 'line(".")'))

    nLines = []
    nLine = 1
    for strLine in vim.current.buffer:
        if strLine == "import ipdb;ipdb.set_trace()":
            nLines.append( nLine)
        nLine += 1

    nLines.reverse()

    for nLine in nLines:
        vim.command( "normal %dG" % nLine)
        vim.command( "normal dd")
        if nLine < nCurrentLine:
            nCurrentLine -= 1

    vim.command( "normal %dG" % nCurrentLine)

vim.command('map <s-f8> :py RemoveBreakpoints()<cr>')
EOF
