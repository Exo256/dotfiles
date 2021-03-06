set autoindent                      " indent a new line the same amount as the line just typed
set cc=120                          " set an 80 column border for good coding style
set clipboard+=unnamedplus          " set clipboard to system
set cursorline                      " adds a cursor line
set encoding=utf8                   " utf8 encoding
set noexpandtab                     " do not convert tabs to white space
set hlsearch                        " highlight search results
set ignorecase                      " Do case insensitive matching
set linebreak                       " breaks line at word
set mouse=a                         " middle-click paste with mouse
set nofixendofline                  " does not append eol character
set number                          " add line numbers
set relativenumber                  " relative line number
set runtimepath+=~/.config/nvim/    " runtime path definition
set shiftwidth=4                    " width for autoindents
set showmatch                       " Show matching brackets.
set softtabstop=4                   " see multiple spaces as tabstops so <BS> does the right thing
set tabstop=4                       " number of columns occupied by a tab character
set wildmode=longest,list           " get bash-like tab completions
set list listchars=tab:——,trail:·
set termguicolors
set undofile
set noswapfile
set history=500

" Set GNvim settings
call gnvim#enable_ext_tabline(0)
call gnvim#enable_ext_cmdline(0)

" Python binary paths
let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python2.7'

" Load keybinds
let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')
execute 'source ' . s:path . '/keybinds.vim'

" Plugins
call plug#begin('~/.config/nvim/plugged')
    for f in split(glob('~/.config/nvim/plugins.d/*.vim'), '\n')
        exe 'source' f
    endfor
call plug#end()
