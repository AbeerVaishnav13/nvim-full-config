" Filetype specific commands
autocmd! FileType markdown nnoremap <buffer> <leader>clr i<span style="color: "></span><Esc>/"><CR>i
autocmd! FileType markdown nnoremap <buffer> <leader>par i<p></p><Left><Esc>cit
autocmd! FileType markdown set wrap

" For Silq files
function! CompileSILQ(run)
	let s:silq_file = expand("%:t") . ''
	if a:run == 'y' || a:run == 'Y'
		exec '!slqc' s:silq_file.' --run'
	else
		exec '!slqc' s:silq_file
	endif
endfunction

" Command for converting docs using pandoc (for markdown files)
function! ConvertDoc(ft)
	let s:md_file = expand("%:t") . ''
	let s:out_file = expand("%:t:r") . '.' . a:ft
	let s:command = s:md_file . ' -o ' . s:out_file
	exec '!pandoc' s:command
	let s:open = input('Open file (y/N): ')
	if s:open == 'y' || s:open == 'Y'
		exec '!open' s:out_file
	endif
endfunction

let g:path_to_silq_files = "$HOME/Documents/Coding/Silq-Programs/Quantum-Algorithms-in-Silq/"

augroup filetypedetect
	au BufNewFile,BufRead *.slq		setf silq
	au BufNewFile,BufRead *.slq		exec "source" g:path_to_silq_files . "vim_silq_extensions/silq_indent.vim"
	au BufNewFile,BufRead *.slq		exec "source" g:path_to_silq_files . "vim_silq_extensions/silq_syntax_highlight.vim"
	au BufNewFile,BufRead *.slq		command! Compsilq call CompileSILQ('n')
	au BufNewFile,BufRead *.slq		command! Runsilq call CompileSILQ('y')
	au BufNewFile,BufRead *.md		command! -nargs=1 Convdoc call ConvertDoc(<f-args>)
	au BufWrite *.md				setf markdown
	au BufNewFile,BufRead *.md		let g:gruvbox_bold=1
	au BufNewFile,BufRead *.asm		setf nasm
augroup END
