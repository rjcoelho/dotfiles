
[:h autoload-functions](https://vimhelp.org/eval.txt.html#autoload-functions)
```
:call filename#funcname()
When such a function is called, and it is not defined yet, Vim will search the 
"autoload" directories in 'runtimepath' for a script file called
"filename.vim". 
```

[:h colorscheme](https://vimhelp.org/syntax.txt.html#%3Acolorscheme)
```
packadd SCHEME
colorscheme SCHEME
let g:lightline.colorscheme = 'SCHEME'
```

[:h packages](https://vimhelp.org/repeat.txt.html#packages) / [Vim: So long Pathogen, hello native package loading](https://shapeshed.com/vim-packages/)
```
To load an optional plugin from a pack use the :packadd command: 
        :packadd foodebug
This searches for "pack/*/opt/foodebug" in 'packpath' and will find
~/.vim/pack/foo/opt/foodebug/plugin/debugger.vim and source it.

To add package
git submodule add URL ~/.vim/pack/bundle/{opt,start}/foodebug
:packadd foodebug (for optional packages only)
:helptags ALL

To remove package
git submodule deinit -f ~/.vim/pack/bundle/{opt,start}/foodebug
git rm -f ~/.vim/pack/bundle/opt/foodebug
```

[:h runtimepath](https://vimhelp.org/options.txt.html#%27runtimepath%27')
```
$HOME/.vim, $VIM/vimfiles, $VIMRUNTIME, $VIM/vimfiles/after, $HOME/.vim/after
```

[:h startuptime](https://vimhelp.org/starting.txt.html#--startuptime)
```
vim --startuptime vim.log +qall
```

[:h vimfiles](https://vimhelp.org/options.txt.html#%27runtimepath%27')
```
autoload/	automatically loaded scripts |autoload-functions|
colors/	color scheme files |:colorscheme|
compiler/	compiler files |:compiler|
doc/		documentation |write-local-help|
filetype.vim	filetypes by file name |new-filetype|
ftplugin/	filetype plugins |write-filetype-plugin|
indent/	indent scripts |indent-expression|
keymap/	key mapping files |mbyte-keymap|
lang/		menu translations |:menutrans|
menu.vim	GUI menus |menu.vim|
plugin/	plugin scripts |write-plugin|
print/	files for printing |postscript-print-encoding|
scripts.vim	filetypes by file contents |new-filetype-scripts|
spell/	spell checking files |spell|
syntax/	syntax files |mysyntaxfile|
tutor/	files for vimtutor |tutor|
```

TODO
- colors
- plugins
