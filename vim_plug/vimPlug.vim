" VimPlug Stuff
call plug#begin('~/.config/nvim/autoload/plugged')

" For themed status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" For intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Proper syntax highlighting
Plug 'sheerun/vim-polyglot'

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'tomasiser/vim-code-dark'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'mukiwu/vim-tomorrow-night'

" FZF stuff
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

" For LaTEX symbols
Plug 'joom/latex-unicoder.vim'

" VimWiki
Plug 'vimwiki/vimwiki'

" Git integration
Plug 'tpope/vim-fugitive'

" Hex colors
Plug 'ap/vim-css-color'

" Auto-pair brackets
Plug 'jiangmiao/auto-pairs'

call plug#end()
