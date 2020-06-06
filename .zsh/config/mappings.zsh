# Insert Mode
bindkey -M viins '^K' up-history # ^K to previous command.
bindkey -M viins '^J' down-history # ^J to next command.
bindkey -M viins '^F' vi-forward-char # Go forward char or complete current completion.
bindkey -M viins '^U' backward-kill-line # Kill line backwards.
bindkey -M viins '^?' backward-delete-char # Delete left char with backspace key.
bindkey -M viins '^B' backward-kill-word # Delete a WORD backward.
bindkey -M viins '^[[3~' delete-char # Ensure delete key always delete forward.
bindkey -M viins ' ' custom-expand-global-alias # Space key to expand global aliases.
bindkey -M viins '^Y' custom-insert-last-typed-word # Insert last typed word for quick copy-paste.
bindkey -M viins '^R' custom-fzf-launch-from-history # Select command from history into the command line (same as fzf-history-widget).
bindkey -M viins '^P' custom-fzf-select # Paste the selected files and directories into the command-line (same as fzf-cd-widget+fzf-file-widget).
bindkey -M viins '^A' custom-fzf-fasd-widget # Fasd fast jump with fzf
bindkey -M viins '^Z' toggle-fzf-tab # Toggle tab completion replace with fzf

# Normal Mode
bindkey -M vicmd 'j' down-line # Override down-line-or-history.
bindkey -M vicmd 'k' up-line # Override up-line-or-history.
bindkey -M vicmd '^K' up-history # ^K to previous command.
bindkey -M vicmd '^J' down-history # ^J to next command.
bindkey -M vicmd 'H' vi-beginning-of-line # Go beginning of line.
bindkey -M vicmd 'L' vi-end-of-line # Go end of line.
bindkey -M vicmd 'sr' change-surround # Change surround operator.
bindkey -M vicmd 'sd' delete-surround # Delete surround operator.
bindkey -M vicmd 'sa' add-surround # Add surround operator.
bindkey -M vicmd '^Y' custom-tmux-scroll-up # Activate tmux copy-mode and scroll up depending on key stroke.
bindkey -M vicmd '^U' custom-tmux-scroll-up # Activate tmux copy-mode and scroll up depending on key stroke.

# Visual Mode
bindkey -M visual 'H' vi-beginning-of-line # Go beginning of line.
bindkey -M visual 'L' vi-end-of-line # Go end of line.
bindkey -M visual 'S' add-surround # Add surround.
foreach char ({a,i}{\',\",\`}) { bindkey -M visual $char select-quoted } && unset char # Text objects for delimiters.
foreach char ({a,i}${(s..)^:-'()[]{}<>bB'}) { bindkey -M visual $char select-bracketed } && unset char # Text objects for pairs of brackets.

# Operator Mode
bindkey -M viopp 'H' vi-beginning-of-line # Go beginning of line.
bindkey -M viopp 'L' vi-end-of-line # Go end of line.
foreach char ({a,i}{\',\",\`}) { bindkey -M viopp $char select-quoted } && unset char # Text objects for delimiters.
foreach char ({a,i}${(s..)^:-'()[]{}<>bB'}) { bindkey -M viopp $char select-bracketed } && unset char # Text objects for pairs of brackets.

# Completion Mode
bindkey -M menuselect '^?' undo # Backspace for deleting suggesting completion as a whole.
bindkey -M menuselect '+' accept-and-hold # Accept the selection but keep the completion list open.
bindkey -M menuselect '^K' up-line-or-history # Navigate up completion.
bindkey -M menuselect '^J' down-line-or-history # Navigate down completion.
bindkey -M menuselect '^L' forward-char # Navigate right completion.
bindkey -M menuselect '^H' backward-char # Navigate left completion.
bindkey -M menuselect '^I' down-line-or-history # <Tab> to selection completion forward.
bindkey -M menuselect '^[[Z' reverse-menu-complete # <S-Tab> to select completion backward.

# Fish-like history search
bindkey -M viins '^[[A' history-substring-search-up # Up-arrow to prev history entry
bindkey -M viins '^[[B' history-substring-search-down # Up-arrow to next history entry

# Edit line in vim with ctrl-e
bindkey '^e' edit-command-line

# Default to vimins mode
bindkey -v
