# Bind 'C-a C-a' to send 'C-a'.
bind-key -T prefix C-a send-prefix

# Reload configuration.
bind-key -T prefix r \
	source-file ~/.tmux/tmux.conf \; \
	display-message ' (!) ~/.tmux/tmux.conf reloaded.'

# Split pane with same directory.
bind-key -T prefix - split-window -v -c '#{pane_current_path}'
bind-key -T prefix \\ split-window -h -c '#{pane_current_path}'
bind-key -T prefix _ split-window -fv -c '#{pane_current_path}' # Full width.
bind-key -T prefix | split-window -fh -c '#{pane_current_path}' # Full height.

# Move panes.
bind-key -T prefix -r \{ swap-pane -U
bind-key -T prefix -r \} swap-pane -D

# Swap windows across themselves.
bind-key -T prefix -r '<' swap-window -d -t -1
bind-key -T prefix -r '>' swap-window -d -t +1

# Kill windows without prompt.
bind-key -T prefix x kill-window

# Kill panes without prompt.
bind-key -T prefix X kill-pane

# Jump search mode with prefix.
bind-key -T prefix / copy-mode \; send-keys '/'
bind-key -T prefix ? copy-mode \; send-keys '?'

# Launch command prompt.
bind-key -T prefix : command-prompt
