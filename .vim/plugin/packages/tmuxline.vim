""
" Simple tmux statusline generator with support for powerline symbols and 
" statusline / airline / lightline integration
""

let g:tmuxline_powerline_separators = 0 " Disable using powerline symbols

" Left section is configured with a, b, c, right with x, y, z. cwin and win affect the 
" current (active) window and the in-active windows respectively.
let g:tmuxline_preset = {
      \'a'    : '#S #{prefix_highlight}',
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'y'    : ['%R', '%a %d %b'],
      \'z'    : '#H'}