# Core Shortcuts
alias mv='mv --interactive --verbose' # Move nodes with interactive mode and extra verbosity.
alias cp='cp --interactive --verbose' # Copy nodes with interactive mode and extra verbosity.
alias ln='ln --interactive --verbose' # Link nodes with interactive mode and extra verbosity.
alias mkdir='mkdir --parents' # Make missing parent directories when creating folders.
alias grep='grep --color=auto --exclude-dir=".git" --exclude-dir="node_modules"' # Grep with colors and ignore common directories.
alias du='du --max-depth=1 --si' # Display size of files and folders under current directory.
alias df='df --all --si --print-type' # Display all disk usage statistics with SI units and FS types.
alias ls='ls --almost-all --classify --color=always --group-directories-first --literal' # List name of nodes.
alias la='ls -l --almost-all --si' # List nodes with their details.
alias ll='ls -lh' # long format and human-readable sizes

# Custom Shortcuts
alias v='nvim'
alias g='git'
alias tmux='tmux -f "$HOME/.tmux/tmux.conf"'
alias rsync='rsync --protect-args --compress --verbose --progress --human-readable'
alias br='broot'
alias mr-repo='find ~/Repos -maxdepth 1 -mindepth 1 | sort | xargs -n1 mr register'
alias mr-update='cd ~ ; mr -j5 update'

# Global Aliases
alias -g L='| less'
alias -g G='| grep'
alias -g Z='| fzf' # eg: grep -irl react * | fzf

# git
foreach aliaskey (a b bl c co d ds dt dts f l r s sm w) {
	alias g$aliaskey="git $aliaskey"
}
unset aliaskey

# OSX's brew
alias brew-upgrade='brew upgrade ; brew cu --all --yes; brew cleanup'

# trash
alias rm-trash="rm -rf ~/.Trash/*"

# cmus
alias cmus-clear='cmus-remote -C "clear -p"'
alias cmus-refresh='cmus-clear ; cmus-remote -C "add -p ~/Music"'

# rust, see https://rustup.rs and https://doc.rust-lang.org/cargo
alias rustup-update'rustup update'
# rust-cargo, see https://github.com/matthiaskrgr/cargo-cache
alias cargo-cache-clean='cargo cache -a'

# youtube-dl
export YT_PLAYLIST="https://www.youtube.com/playlist?list=PLuOtXP9DKvRIJzPbBOS52rKrKhEbywjwr" # Tops
#export YT_PLAYLIST="https://www.youtube.com/playlist?list=PLuOtXP9DKvRKzc0-_IQpYKefPFxuRKj3I" # Oldies
#export YT_PLAYLIST="https://www.youtube.com/playlist?list=PLuOtXP9DKvRIo3fz6XcMrnJvZnXZFNqyC" # Trance
alias yt_plst="youtube-dl -j --ignore-config --flat-playlist \$YT_PLAYLIST | jq -r '.id' | sed 's_^_https://youtu.be/_'" # list playlist
alias yt_plst_mp3="yt_plst | xargs -n 1 -P 8 youtube-dl --extract-audio" # download in parallel

# python3
# note: On OSX install python using brew but don't override OSX's python, see https://docs.brew.sh/Homebrew-and-Python.html
alias py3-install='python3 -m pip install -r $XDG_CONFIG_HOME/python3/requirements.txt'
alias py3-upgrade='python3 -m pip install --upgrade pip setuptools wheel'
alias py3-update='python3 -m pip freeze -qq | cut -d '=' -f1 | python3 -m pip install --upgrade -r /dev/stdin'
alias py3-freeze='python3 -m pip freeze --q >! $XDG_CONFIG_HOME/python3/requirements.txt'
alias py3-uninstall='python3 -m pip freeze | xargs python3 -m pip uninstall -y'

# exa
alias exa='\exa --group-directories-first --all --git --long' # ll replacement

# commad-line services see https://github.com/chubin/awesome-console-services
alias weather='curl wttr.in'
alias covid='curl https://corona-stats.online?minimal=true\&top=40'
alias bitcoinrate='curl rate.sx'
alias geolocation='curl -s ifconfig.co/json | jq .'
