" Start insert mode and disable line numbers in terminal buffer.
augroup terminalsettings
	autocmd!
	if has('nvim')
		autocmd TermOpen * setlocal nonumber norelativenumber
		autocmd TermOpen * startinsert
	endif
augroup end

" Briefly highlight yanked region.
augroup highlightyank
	autocmd!

	if has('nvim')
		autocmd TextYankPost * lua require'vim.highlight'.on_yank('Visual', 100)
	endif
augroup end

" Block changes to read-only buffers.
augroup blockreadonly
	autocmd!
	autocmd BufReadPost * let &l:modifiable = !&readonly
augroup end
