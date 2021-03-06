" Key bindings
" For remapping keys to provide greater access
nnoremap <silent> <C-c> <Esc>:noh<CR>
vnoremap <silent> <C-c> <Esc>:noh<CR>
snoremap <C-c> <Esc>
inoremap <C-c> <Esc>
nnoremap <Esc> <C-c>
vnoremap <Esc> <C-c>
snoremap <Esc> <C-c>
inoremap <Esc> <C-c>

" Reload config
nnoremap <silent> ,, :source /Users/abeervaishnav/.config/nvim/init.vim<CR>

nnoremap S :%s//g<Left><Left>
vnoremap S :s//g<Left><Left>
nnoremap <leader>sp :set spell!<CR>
noremap ; :
noremap : ;

" Buffer manipulation
function! BufDelOrQuit()
  let s:num_buf = len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
  if s:num_buf > 1
    :bd
  else
    :q
  endif
endfunction

function! BufDelOrQuitImm()
  let s:num_buf = len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
  if s:num_buf > 1
    :bd!
  else
    :q!
  endif
endfunction

noremap <silent> Q :call BufDelOrQuit()<CR>
noremap <silent> SQ :call BufDelOrQuitImm()<CR>
nnoremap <silent> H :bp<CR>
nnoremap <silent> K :bn<CR>

" Better search
nnoremap n nzz
nnoremap N Nzz

" Cursor navigation (HJUK instead of HJKL)
" All modes
noremap u k
noremap k l
noremap U u

" Indentation
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Normal mode
nnoremap <leader>vs :vsplit<space>
nnoremap <leader>s :split<space>

" Exit commands
" All modes
noremap W :w<CR>

" Making split window easier
" All modes
noremap <C-u> <C-w>k
noremap <C-k> <C-w>l
noremap <C-j> <C-w>j
noremap <C-h> <C-w>h
noremap <C-]> <C-w>>
noremap <C-[> <C-w><
noremap <C-+> <C-w>+
noremap <C-_> <C-w>-
noremap <C-=> <C-w>=

" Window orientation
function! Halign()
  if &filetype == ''
    wincmd J
    resize -10
  else
    wincmd K
    resize +10
  endif
endfunction

function! Valign()
  if &filetype == ''
    wincmd L
    vertical resize -25
  else
    wincmd H
    vertical resize +25
  endif
endfunction

noremap <leader>k :call Valign()<CR>
noremap <leader>h :call Halign()<CR>

" Terminal
" :vsp<CR>:term fish<CR>:vertical resize -25<CR>
noremap <silent> <C-t> :FloatermToggle<CR>
tnoremap <Esc> <C-\><C-n>

" Plugin key mappings
" FZF key mappings
nnoremap <C-f> :FZF<CR>

" Fugitive key mappings
nnoremap <leader>gh :diffget //3<CR>
nnoremap <leader>gf :diffget //2<CR>
nnoremap <leader>gs :G<CR>
