# Make special variables duplicate-free.
typeset -gU path fpath cdpath

# Define functions to load them on execution.
foreach function (
	add-zsh-hook
	edit-command-line
	compinit
	promptinit
	select-bracketed
	select-quoted
	surround
) {
	autoload -U $function
}

# Load binary modules.
foreach module (
	complete
	complist
	datetime
	parameter
	regex
	zle
	zleparameter
	zpty
	zutil
) {
	zmodload zsh/$module
}

# Initialize the completion system with a cache time of 24 hours.
typeset -g zcompdump="$ZDOTDIR/cache/.zcompdump"
typeset -g comp_files=($zcompdump(Nm-24))

if (( $#comp_files )) {
    compinit -i -C -d $zcompdump
} else {
	compinit -i -d $zcompdump
}

unset zcompdump
unset comp_files

# zsh-defer: Deferred execution of zsh commands
source "$ZDOTDIR/plugins/defer/zsh-defer.plugin.zsh"
