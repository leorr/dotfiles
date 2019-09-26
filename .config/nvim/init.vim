call plug#begin()
    Plug 'ycm-core/YouCompleteMe'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'

    Plug 'calviken/vim-gdscript3'
    Plug 'terminalnode/sway-vim-syntax'
    Plug 'jvirtanen/vim-octave'

    Plug 'gko/vim-coloresque'
call plug#end()

let g:UltiSnipsExpandTrigger="<c-j>"
let g:matlab_behave_software="octave"
let g:matlab_behave_window_name="OCTAVE"

set shiftwidth=4
set softtabstop=0 noexpandtab
set incsearch ignorecase smartcase hlsearch
set clipboard=unnamedplus
set autoindent
set number
set cursorline
set syntax=dosini
set t_Co=16
" HIGHLIGHTS "
filetype plugin indent on
syntax on
set background=dark
hi SignColumn ctermbg=none
hi CursorLine cterm=none ctermbg=none
hi LineNr ctermfg=darkblue
hi CursorLineNr cterm=none ctermfg=blue ctermbg=none
hi VertSplit cterm=none
hi Pmenu ctermbg=black ctermfg=white
hi PmenuSel cterm=underline ctermbg=black ctermfg=white
hi PmenuSbar cterm=none ctermbg=none ctermfg=white
hi Comment ctermfg=darkblue
"
"COMMANDS & FUNCTIONS "
" TODO cd to dir and ocatve --persist filename
" .m files are "octave" files

autocmd BufEnter * silent! lcd %:p:h
