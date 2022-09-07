" Default Settings
syntax on

let mapleader=","

set tabstop=4
set nocompatible " Disable vi-compatibility
set laststatus=2 " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set tabstop=4
set paste
set background=dark

colorscheme atom-dark

" --column: Show column number
" --line-number: Show line numober
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --smart-case --no-ignore -g "!tags" --hidden --follow --glob "!build/*" --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1,
            \   <bang>0 ? fzf#vim#with_preview('up:60%')
            \           : fzf#vim#with_preview('right:50%'),
            \   <bang>0)

set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
" let g:Powerline_symbols = 'unicode'

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

map <C-n> :NERDTreeToggle<CR>
map <leader>gt :call TimeLapse() <cr> 

let g:snipMate = { 'snippet_version' : 1 }
