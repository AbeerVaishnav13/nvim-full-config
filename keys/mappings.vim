" Key bindings
" For remapping keys to provide greater access
nnoremap <C-c> <Esc>
vnoremap <C-c> <Esc>
snoremap <C-c> <Esc>
inoremap <C-c> <Esc>
nnoremap <Esc> <C-c>
vnoremap <Esc> <C-c>
snoremap <Esc> <C-c>
inoremap <Esc> <C-c>

nnoremap S :%s//g<Left><Left>
vnoremap S :s//g<Left><Left>
nnoremap <leader>sp :set spell!<CR>
noremap ; :
noremap : ;

" Terminal
noremap <M-S-t> :vsp<CR>:term fish<CR>:vertical resize -25<CR>A
tnoremap <M-q> <C-\><C-n>

" Buffer manipulation
function! BufDelOrQuit()
	let s:num_buf = len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
	if s:num_buf > 1
		:bd!
	else
		:q
	endif
endfunction

nnoremap Q :call BufDelOrQuit()<CR>

" Cursor navigation
" All modes
noremap u k
noremap k l
noremap U u

" Indentation
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Normal mode
nnoremap <leader>vs :vsplit<space>
nnoremap <leader>hs :split<space>

" Exit commands
" All modes
noremap W :w<CR>
noremap SQ :q!<CR>

" Making split window easier
" All modes
noremap <C-w>u <C-w>k
noremap <C-w>j <C-w>j
noremap <C-w>k <C-w>l
noremap <C-w>h <C-w>h
noremap <C-]> <C-w>>
noremap <C-[> <C-w><
noremap <C-p> <C-w>+
noremap <C-o> <C-w>-
noremap <leader>= <C-w>=

" Plugin key mappings
" FZF key mappings
nnoremap <C-f> :FZF<CR>

" Fugitive key mappings
nnoremap <leader>gh :diffget //3<CR>
nnoremap <leader>gf :diffget //2<CR>
nnoremap <leader>gs :G<CR>
