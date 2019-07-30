call plug#begin('~/.vim/plugged')
call plug#end()

set incsearch ignorecase smartcase hlsearch
set clipboard=unnamedplus
set autoindent
set number
set cursorline
set laststatus=0
set background=dark
set syntax=dosini
" HIGHLIGHTS "

filetype plugin indent on
syntax on
hi SignColumn ctermbg=none
hi CursorLine cterm=none ctermbg=black
hi LineNr ctermfg=darkblue
hi CursorLineNr cterm=none ctermfg=blue ctermbg=black
hi VertSplit cterm=none
hi Pmenu ctermbg=black ctermfg=white
hi PmenuSel cterm=underline ctermbg=black ctermfg=white
hi PmenuSbar cterm=none ctermbg=none ctermfg=white
hi Comment ctermfg=darkcyan
"
"COMMANDS & FUNCTIONS "
