" Vim pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" Disable arrow	keys
"noremap  <Up> ""
"noremap! <Up> <Esc>
"noremap  <Down> ""
"noremap! <Down> <Esc>
"noremap  <Left> ""
"noremap! <Left> <Esc>
"noremap  <Right> ""
"noremap! <Right> <Esc>

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

" Use F8/Shift-F8 to add/remove a breakpoint (ipdb.set_trace)
" Totally cool.
python << EOF
import vim
def SetBreakpoint():
    import re
    nLine = int( vim.eval( 'line(".")'))

    strLine = vim.current.line
    strWhite = re.search( '^(\s*)', strLine).group(1)

    vim.current.buffer.append(
       "%(space)sipdb.set_trace()  %(mark)s Breakpoint" %
         {'space':strWhite, 'mark': '#'}, nLine - 1)

    for strLine in vim.current.buffer:
        if strLine == "import ipdb":
            break
    else:
        vim.current.buffer.append( 'import ipdb', 0)
        vim.command( 'normal j1')

vim.command( 'map <f8> :py SetBreakpoint()<cr>')

def RemoveBreakpoints():
    import re

    nCurrentLine = int( vim.eval( 'line(".")'))

    nLines = []
    nLine = 1
    for strLine in vim.current.buffer:
        if strLine == "import ipdb" or strLine.lstrip()[:16] == "ipdb.set_trace()":
            nLines.append( nLine)
        nLine += 1

    nLines.reverse()

    for nLine in nLines:
        vim.command( "normal %dG" % nLine)
        vim.command( "normal dd")
        if nLine < nCurrentLine:
            nCurrentLine -= 1

    vim.command( "normal %dG" % nCurrentLine)

vim.command( "map <s-f8> :py RemoveBreakpoints()<cr>")
EOF
