[zshzle](https://linux.die.net/man/1/zshzle) - zsh command line editor

`bindkey` manipulates keymaps and key bindings
```
bindkey -l emacs|viins|vimcmd # list existing keybinds
bindkey -e|v|i # select emacs|viins|vicmd keymap
bindkey -D emacs|viins|vimcmd # delete all existing keybinds
bindkey -M emacs|viins|vimcmd in-string command|out-string # Binds in-string to command (or out-string)
```
