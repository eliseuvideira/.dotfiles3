"                      █
"           ▐▌   ▐▌    ▀
"▗▟██▖ ▟█▙ ▐███ ▐███  ██  ▐▙██▖ ▟█▟▌▗▟██▖
"▐▙▄▖▘▐▙▄▟▌ ▐▌   ▐▌    █  ▐▛ ▐▌▐▛ ▜▌▐▙▄▖▘
" ▀▀█▖▐▛▀▀▘ ▐▌   ▐▌    █  ▐▌ ▐▌▐▌ ▐▌ ▀▀█▖
"▐▄▄▟▌▝█▄▄▌ ▐▙▄  ▐▙▄ ▗▄█▄▖▐▌ ▐▌▝█▄█▌▐▄▄▟▌
" ▀▀▀  ▝▀▀   ▀▀   ▀▀ ▝▀▀▀▘▝▘ ▝▘ ▞▀▐▌ ▀▀▀
"                               ▜█▛▘

" leader
let mapleader=" "

" tab config
set expandtab tabstop=2 shiftwidth=2

" line numbers
set number relativenumber

"      ▗▄▖              █
"      ▝▜▌              ▀
" ▐▙█▙  ▐▌  ▐▌ ▐▌ ▟█▟▌ ██  ▐▙██▖▗▟██▖
" ▐▛ ▜▌ ▐▌  ▐▌ ▐▌▐▛ ▜▌  █  ▐▛ ▐▌▐▙▄▖▘
" ▐▌ ▐▌ ▐▌  ▐▌ ▐▌▐▌ ▐▌  █  ▐▌ ▐▌ ▀▀█▖
" ▐█▄█▘ ▐▙▄ ▐▙▄█▌▝█▄█▌▗▄█▄▖▐▌ ▐▌▐▄▄▟▌
" ▐▌▀▘   ▀▀  ▀▀▝▘ ▞▀▐▌▝▀▀▀▘▝▘ ▝▘ ▀▀▀
" ▐▌              ▜█▛▘

" download plugin manager
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

" download plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tomasiser/vim-code-dark'

call plug#end()

" display hidden files
let g:NERDTreeShowHidden=1

" vscode theme
colorscheme codedark

"                      █
"                      ▀
"▐█▙█▖ ▟██▖▐▙█▙ ▐▙█▙  ██  ▐▙██▖ ▟█▟▌▗▟██▖
"▐▌█▐▌ ▘▄▟▌▐▛ ▜▌▐▛ ▜▌  █  ▐▛ ▐▌▐▛ ▜▌▐▙▄▖▘
"▐▌█▐▌▗█▀▜▌▐▌ ▐▌▐▌ ▐▌  █  ▐▌ ▐▌▐▌ ▐▌ ▀▀█▖
"▐▌█▐▌▐▙▄█▌▐█▄█▘▐█▄█▘▗▄█▄▖▐▌ ▐▌▝█▄█▌▐▄▄▟▌
"▝▘▀▝▘ ▀▀▝▘▐▌▀▘ ▐▌▀▘ ▝▀▀▀▘▝▘ ▝▘ ▞▀▐▌ ▀▀▀
"          ▐▌   ▐▌              ▜█▛▘

" ctrl+s to save
nmap <c-s> :w<CR>

" navigating with hjkl
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" S to replace all
nnoremap S :%s//g<Left><Left>
nnoremap s <noop>
nnoremap ss S

nnoremap <Leader>f :NERDTreeToggle<Enter>

"  ▄▄                       █
" ▐▛▀                 ▐▌    ▀
"▐███ ▐▌ ▐▌▐▙██▖ ▟██▖▐███  ██   ▟█▙ ▐▙██▖▗▟██▖
" ▐▌  ▐▌ ▐▌▐▛ ▐▌▐▛  ▘ ▐▌    █  ▐▛ ▜▌▐▛ ▐▌▐▙▄▖▘
" ▐▌  ▐▌ ▐▌▐▌ ▐▌▐▌    ▐▌    █  ▐▌ ▐▌▐▌ ▐▌ ▀▀█▖
" ▐▌  ▐▙▄█▌▐▌ ▐▌▝█▄▄▌ ▐▙▄ ▗▄█▄▖▝█▄█▘▐▌ ▐▌▐▄▄▟▌
" ▝▘   ▀▀▝▘▝▘ ▝▘ ▝▀▀   ▀▀ ▝▀▀▀▘ ▝▀▘ ▝▘ ▝▘ ▀▀▀

function TrimTrailingWhiteSpace()
  %s/\s\+$//e
  call setpos('.', getpos("''"))
endfunction

function TrimTrailingNewLine()
  %s/\n\+\%$//e
endfunction

"                                 ▗▖
"           ▐▌                    ▐▌
" ▟██▖▐▌ ▐▌▐███  ▟█▙  ▟██▖▐█▙█▖ ▟█▟▌
" ▘▄▟▌▐▌ ▐▌ ▐▌  ▐▛ ▜▌▐▛  ▘▐▌█▐▌▐▛ ▜▌
"▗█▀▜▌▐▌ ▐▌ ▐▌  ▐▌ ▐▌▐▌   ▐▌█▐▌▐▌ ▐▌
"▐▙▄█▌▐▙▄█▌ ▐▙▄ ▝█▄█▘▝█▄▄▌▐▌█▐▌▝█▄█▌
" ▀▀▝▘ ▀▀▝▘  ▀▀  ▝▀▘  ▝▀▀ ▝▘▀▝▘ ▝▀▝▘

" trim trailing whitespaces on save
autocmd BufWritePre * :call TrimTrailingWhiteSpace()

" trim trailing new lines on save
autocmd BufWritePre * :call TrimTrailingNewLine()
