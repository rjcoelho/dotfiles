# Finish if there isn't a plugins directory.
if ! [[ -d "$ZDOTDIR/plugins/" ]] {
	return 1
}

# zsh-autopair: Insert or delete brackets, parens, quotes in pair. (.01s)
source "$ZDOTDIR/plugins/autopair/autopair.zsh"

# zsh-system-clipboard: Synchronize system clipboard with ZLE registers. (0s)
source "$ZDOTDIR/plugins/system-clipboard/zsh-system-clipboard.zsh"

# zsh-autosuggestions: Fish-like auto-suggestions. (0s)
source "$ZDOTDIR/plugins/autosuggestions/zsh-autosuggestions.zsh"

# zsh-syntax-highlighting: Syntax highlighting support. (.01s)
source "$ZDOTDIR/plugins/syntax-highlighting/zsh-syntax-highlighting.zsh"
	typeset -ga ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
	typeset -gA ZSH_HIGHLIGHT_STYLES

	# main
	ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red'
	ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=yellow'
	ZSH_HIGHLIGHT_STYLES[alias]='fg=cyan'
	ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=cyan'
	ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,underline'
	ZSH_HIGHLIGHT_STYLES[function]='fg=cyan'
	ZSH_HIGHLIGHT_STYLES[command]='fg=green'
	ZSH_HIGHLIGHT_STYLES[precommand]='fg=green,underline'
	ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=cyan'
	ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=green,italic'
	ZSH_HIGHLIGHT_STYLES[path]='fg=magenta'
	ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=magenta'
	ZSH_HIGHLIGHT_STYLES[path_prefix]='none'
	ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='none'
	ZSH_HIGHLIGHT_STYLES[globbing]='bg=black'
	ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=cyan'
	ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='none'
	ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='none'
	ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=magenta'
	ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=yellow'
	ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=yellow'
	ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=blue'
	ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=blue'
	ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=blue'
	ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=blue'
	ZSH_HIGHLIGHT_STYLES[assign]='none,underline'
	ZSH_HIGHLIGHT_STYLES[redirection]='fg=cyan'
	ZSH_HIGHLIGHT_STYLES[comment]='fg=black'
	ZSH_HIGHLIGHT_STYLES[arg0]='default'

	# brackets
	ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]='bg=black'

# zsh-history-substring-search: Fish-like history search. (0.01s)
source "$ZDOTDIR/plugins/history-substring-search/zsh-history-substring-search.zsh"

# fzf (0s)
if [[ -f "$HOME/.fzf.zsh" ]] source "$HOME/.fzf.zsh"

# fzf-tab: Replace zsh's default completion selection menu with fzf.
#source "$ZDOTDIR/plugins/fzf-tab/fzf-tab.plugin.zsh"

# fzf-gems: few fzf bindings for shell convenience ^G^{File,Branch,Tag,Remote,History}
# see https://junegunn.kr/2016/07/fzf-git/
#source "$ZDOTDIR/plugins/fzf-gems/fzf_git_functions.sh"
#source "$ZDOTDIR/plugins/fzf-gems/fzf_git_keybindings.zsh"

# fasd (.01s)
fasd_cache="$ZDOTDIR/cache/fasd-init-cache.$UID.zsh"
if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
	fasd --init auto >| "$fasd_cache"
fi
source "$fasd_cache"
unset fasd_cache

# op: 1password completions
# see https://support.1password.com/command-line-getting-started/
# need to call ´eval $(op signin https://miniclip.1Password.com rui.coelho@miniclip.com)´
#source "$ZDOTDIR/plugins/1password/op.plugin.zsh"
