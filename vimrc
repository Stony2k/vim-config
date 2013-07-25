" Default Settings
syntax on

let mapleader=","

set nocompatible " Disable vi-compatibility
set laststatus=2 " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set tabstop=4

colorscheme elflord

set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
let g:Powerline_symbols = 'unicode'

filetype on " Enable filetype detection
filetype indent on " Enable filetype-specific indenting
filetype plugin on " Enable filetype-specific plugins

set nowrap

set autoread " Reload file when changes happen in other editors

set nobackup " do not keep a backup files
set nowritebackup
set ruler " show the cursor position all the time

set shell=bash
set noerrorbells

autocmd! bufwritepost .vimrc source %

"Languages
au BufRead,BufNewFile *.scala set filetype=scala

"Plugins
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

map <C-n> :NERDTreeToggle<CR>
map <leader>gt :call TimeLapse() <cr> 
