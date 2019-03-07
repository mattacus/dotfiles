" General settings
syntax on
set number
set ruler
set wildmenu
set showcmd
set ttimeoutlen=100
set incsearch
set hlsearch
set expandtab
set shiftwidth=2
set softtabstop=2
set scrolloff=5
set ai
set si

" Plugins
call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'romainl/vim-cool'
call plug#end()
colorscheme nord

let g:CoolTotalMatches = 1

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

