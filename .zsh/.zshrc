#zmodload zsh/zprof # Uncomment to profile zsh load times and run 'time zsh -i -c exit'

foreach piece (
	load.zsh
	exports.zsh
	settings.zsh
) {
	source $ZDOTDIR/config/$piece
}

foreach defer_piece (
	completions.zsh
	functions.zsh
	aliases.zsh
	widgets.zsh
	plugins.zsh
	prompt.zsh
	mappings.zsh
) {
	zsh-defer source $ZDOTDIR/config/$defer_piece
}

#zprof