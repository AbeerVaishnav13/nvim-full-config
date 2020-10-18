" Basic config
set nu rnu
set tabstop=4
set shiftwidth=4
set softtabstop=4
set clipboard+=unnamedplus
syntax on
set encoding=utf8
set nohlsearch
set scrolloff=10
set smartcase
set smartindent
set noerrorbells
set splitright
set incsearch
set linebreak
set nowrap
set t_Co=256
set t_ut=
set mouse=a

let mapleader=","

" Clear all registers
command! WipeRegs let regs='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-*+"' | let i=0 | while (i < strlen(regs)) | exec 'let @'.regs[i].'=""' | let i=i+1 | endwhile | unlet regs

" Options for fuzzy search
set nocompatible	" Limit search to the project dir
set path+=**		" Search within subdirectories of the project recursively
set wildmenu		" Shows multiple matches on a pop-up menu

" Sourcing files for extra functionality
source /Users/abeervaishnav/.config/nvim/vim_plug/vimPlug.vim
source /Users/abeervaishnav/.config/nvim/plug-config/coc.vim
source /Users/abeervaishnav/.config/nvim/plug-config/fzf.vim
source /Users/abeervaishnav/.config/nvim/Colors/Colorscheme.vim
source /Users/abeervaishnav/.config/nvim/keys/mappings.vim
source /Users/abeervaishnav/.config/nvim/filetype/filePlug.vim
source /Users/abeervaishnav/.config/nvim/plug-config/airline.vim
