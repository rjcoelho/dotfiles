" Add prefix 'Fzf' commands for grouping.
let g:fzf_command_prefix = 'F'

" Jump to the existing window if possible.
let g:fzf_buffers_jump = v:true

" Directly execute the command without appending anything.
let g:fzf_commands_expect = 'alt-enter'

" Enable preview window.
let g:fzf_preview_window = 'down:60%'

" Set actions manually.
let g:fzf_action = {
	\ 'ctrl-s': 'split',
	\ 'ctrl-v': 'vsplit',
	\ 'ctrl-t': 'tab split'
\ }

" History directory.
let g:fzf_history_dir = $HOME .. '/.vim/cache/share/fzf/'

" Override `fzf` options.
let $FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS .. " --margin='1,4' --bold --color='fg+:15,bg+:-1,info:12,prompt:4,pointer:12'"

" Define key mappings.
nnoremap <silent> <C-p> :FGFiles<CR>
nnoremap <silent> gis :FGFiles?<CR>
nnoremap <silent> <Leader><C-p> :FFiles<CR>
nnoremap <silent> <M-x> :FCommands<CR>
nnoremap <silent> <C-b> :FBuffers<CR>
nnoremap <silent> <C-f> :FBTags<CR>
nnoremap <silent> <Leader><C-f> :FTags<CR>
nnoremap <silent> <Leader>h :FHelptags<CR>
nnoremap <silent> <Leader>: :FHistory:<CR>
nnoremap <silent> <Leader>/ :FHistory/<CR>
nnoremap <silent> <Leader>` :FMarks<CR>
nnoremap <silent> g<C-p> :call fzf#run(
	\ fzf#wrap(
		\ 'projects',
		\ {
		\	'source': 'ls ~/Repos',
		\	'dir': '~/Repos',
		\	'sink': {dir -> execute(printf('silent edit %s', dir))},
		\	'options': '--no-multi --prompt="> "'
		\ },
		\ 0
	\ )
\ )<CR>
nnoremap <silent> <Leader>g :FRg:<CR>
