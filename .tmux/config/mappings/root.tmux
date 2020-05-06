# Switch panes.
bind-key -T root M-Left select-pane -L
bind-key -T root M-Right select-pane -R
bind-key -T root M-Up select-pane -U
bind-key -T root M-Down select-pane -D

# Switch windows.
bind-key -T root S-M-Left previous-window
bind-key -T root S-M-Right next-window

# Toggle zoom.
bind-key -T root C-z resize-pane -Z

# Resize panes.
bind-key -T root S-Down resize-pane -D 5
bind-key -T root S-Up resize-pane -U 5
bind-key -T root S-Left resize-pane -L 5
bind-key -T root S-Right resize-pane -R 5

# Toggle panes synchronization.
bind-key -T root C-i set synchronize-panes
unbind-key -T root Tab

# Slear scrollback and buffer
bind-key -T root C-l send-keys C-l \; send-keys -R \; clear-history

