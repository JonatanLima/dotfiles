" Basic configs
"
execute pathogen#infect()

syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
set list listchars=tab:\ \ ,trail:·
set lcs+=space:·
set autoindent
let mapleader=','
set colorcolumn=80
" highlight ColorColumn ctermbg=235 guibg=#2c2d27
highlight ColorColumn guibg=red
set confirm
set cursorline
highlight Comment ctermfg=green
filetype plugin indent on
set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\
set fileencoding=utf-8
set encoding=utf8
set ffs=unix,dos,mac
set mouse=a
set smarttab
set smartindent
set nowrap
set linebreak
set foldmethod=indent
set nofoldenable
set ttyfast
set backspace=indent,eol,start
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set hidden
set hlsearch
set incsearch
set ignorecase
set smartcase
set autoread
set binary noeol
set noendofline
set nofixendofline
set t_Co=256

let no_buffers_menu=1
autocmd BufWritePre * %s/\s\+$//e
highlight clear SignColumn

" colors jellybeans
" colors iceberg
" colors zenbrum
colors monokai
" colors atom-dark-256
" colors ghdark
" colors darkness

set background=dark

let g:python3_host_prog = '/usr/local/bin/python3'
