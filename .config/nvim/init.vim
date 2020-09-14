call plug#begin()
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'calviken/vim-gdscript3'
    Plug 'sheerun/vim-polyglot'
    Plug 'honza/vim-snippets'
    Plug 'chrisbra/Colorizer'
    Plug 'turbio/bracey.vim'
call plug#end()

" HIGHLIGHTS "
filetype plugin indent on
syntax on

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set nobackup
set smartindent
set nowritebackup
set hidden
set cmdheight=2
set shiftwidth=4
set shortmess+=c
set updatetime=300
set autoindent
set copyindent
set background=dark
set clipboard=unnamedplus
set number
set cursorline
hi SignColumn ctermbg=none
hi CursorLine cterm=none ctermbg=black
hi LineNr ctermfg=darkgrey
hi CursorLineNr ctermfg=grey ctermbg=black
hi VertSplit cterm=none
hi Pmenu ctermbg=black ctermfg=white
hi PmenuSel cterm=underline ctermbg=black ctermfg=white
hi PmenuSbar cterm=none ctermbg=none ctermfg=white
hi SpecialKey ctermfg=blue
" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
imap <C-j> <Plug>(coc-snippets-expand)

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
"
"-------------- web devel -------------"
autocmd BufRead,BufNewFile *.htm,*.html setlocal tabstop=2 shiftwidth=2 softtabstop=2

