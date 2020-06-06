" from https://github.com/justinmk/vim-dirvish/pull/176
" How to open a directory to view its contents within the same Dirvish buffer (like in a tree style view)? ~
" This changes the behaviour of the 'p' key to use the 'find' and 'xargs' unix tools to "open" a directory in a vim buffer. It relies on unix style filepaths.
augroup dirvish_config
    autocmd!
    autocmd FileType dirvish
                \ nnoremap <silent><buffer> p ddO<Esc>:let @"=substitute(@", '\n', '', 'g')<CR>:r ! find "<C-R>"" -maxdepth 1 -print0 \| xargs -0 ls -Fd<CR>:silent! keeppatterns %s/\/\//\//g<CR>:silent! keeppatterns %s/[^a-zA-Z0-9\/]$//g<CR>:silent! keeppatterns g/^$/d<CR>:noh<CR>
augroup END

