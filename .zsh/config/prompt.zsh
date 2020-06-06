# Add prompt to fpath.
fpath=($fpath "$ZDOTDIR/plugins/pure")
#fpath=($fpath "$ZDOTDIR/plugins/lean")

# Initialize the prompt system.
promptinit

# Prompt theme.
prompt pure
#prompt lean

# Prompt styles.
zstyle :prompt:pure:prompt:error color 1
zstyle :prompt:pure:prompt:success color 15

# Customize prompt
# see https://github.com/sindresorhus/pure/wiki/Customizations,-hacks-and-tweaks
function rprompt(){
    echo " %F{6}$REBAR_PROFILE %F{3}$AWS_PROFILE %F{4}$AWS_DEFAULT_REGION"
}
RPROMPT+='$(rprompt)'
