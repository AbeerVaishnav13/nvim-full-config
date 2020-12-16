" Colorscheme settings
set background=dark
set termguicolors

" Gruvbox colorscheme settings
" let g:gruvbox_invert_selection=0
" let g:quantum_italics=1
" let g:gruvbox_bold=0
" let g:gruvbox_italic=1
" let g:gruvbox_contrast_dark='hard'
" let g:gruvbox_italicize_comments=1
" colorscheme gruvbox

" Quantum colorscheme settings
" let g:quantum_black=1
" colorscheme quantum

let base16colorspace=256
colorscheme base16-default-dark

if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
