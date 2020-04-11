call plug#begin()
	Plug 'Shougo/deoplete.nvim'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'

    Plug 'terminalnode/sway-vim-syntax'
    Plug 'majutsushi/tagbar'

    Plug 'gko/vim-coloresque'
call plug#end()

let g:deoplete#enable_at_startup = 1

let g:UltiSnipsExpandTrigger="<c-j>"


""use TAB as the mapping
inoremap <silent><expr> <TAB>
	\ pumvisible() ?  "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "" {{{
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~ '\s'
endfunction "" }}}


set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
"set expandtab      " tabs are space
set autoindent
set copyindent
set incsearch ignorecase smartcase hlsearch
set clipboard=unnamedplus
set number
set cursorline
set syntax=dosini
set t_Co=16
"et autoindent
" HIGHLIGHTS "
filetype plugin indent on
syntax on
set background=dark
hi SignColumn ctermbg=none
hi CursorLine cterm=none ctermbg=black
hi LineNr ctermfg=darkblue
hi CursorLineNr cterm=none ctermfg=blue ctermbg=black
hi VertSplit cterm=none
hi Pmenu ctermbg=black ctermfg=white
hi PmenuSel cterm=underline ctermbg=black ctermfg=white
hi PmenuSbar cterm=none ctermbg=none ctermfg=white
hi Comment ctermfg=darkblue
" MAPs
map <C-b> :TagbarToggle<CR>
"COMMANDS & FUNCTIONS "

autocmd BufEnter * silent! lcd %:p:h
autocmd FileType java setlocal omnifunc=javacomplete#Complete
Plug 'majutsushi/tagbar'
