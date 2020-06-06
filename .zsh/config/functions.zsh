##
# `config` git alias for dotfiles bare repo
function config {
    /usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME $@
}

# find-in-file - usage: fif <SEARCH_TERM>
# see https://medium.com/better-programming/boost-your-command-line-productivity-with-fuzzy-finder-985aa162ba5d
function fif() {
  	if [ ! "$#" -gt 0 ]; then
    	echo "Need a string to search for!";
    	return 1;
  	fi
  	rg --files-with-matches --no-messages "$1" | \
	  	fzf $FZF_PREVIEW_WINDOW \
			--preview "rg --ignore-case --pretty --context 10 '$1' {}"
}

# fasd & fzf change directory - open best matched file using `fasd` if given argument, filter output of `fasd` using `fzf` else
function cdv() {
    [ $# -gt 0 ] && fasd -f -e ${EDITOR} "$*" && return
    local file
    file="$(fasd -Rfl "$1" | fzf -1 -0 --no-sort +m)" && vi "${file}" || return 1
}

# show terminal colors (useful for selecting colors)
function show-colors() {
	for i in {0..255}; do
    	printf "\x1b[38;5;${i}mcolour${i}\x1b[0m\n"
	done
}

##
# Generate authentication keys for SSH.
##
function gen-ssh-keygen-ed25519() {
	ssh-keygen -t ed25519 -o -a 100 -f ~/.ssh/keys/$1 -C "$2"
}
function gen-ssh-keygen-rsa() {
	ssh-keygen -t rsa -o -a 100 -b 4096 -f ~/.ssh/keys/$1 -C "$2"
}
