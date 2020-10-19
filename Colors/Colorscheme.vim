" Colorscheme settings
let g:gruvbox_invert_selection=0
colorscheme gruvbox
let g:gruvbox_bold=0
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='hard'
set background=dark
let g:gruvbox_italicize_comments=1

if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
