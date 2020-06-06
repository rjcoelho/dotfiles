if !has('nvim')
	finish
endif

" Disable built-in ftplugin.
let b:did_ftplugin = v:true

" Respect $MANWIDTH.
let g:man_hardwrap = v:true

" Initialize the manual page.
if !exists('b:man_sect')
	call man#init_pager()
endif

" Set common buffer-only settings.
setlocal buftype=nofile bufhidden=hide noswapfile nomodified readonly nomodifiable
setlocal noexpandtab tabstop=8 softtabstop=8 shiftwidth=8
setlocal nonumber norelativenumber
setlocal foldmethod=indent nofoldenable
