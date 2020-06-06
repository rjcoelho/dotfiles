# Initialize $PATH with system binaries.
path=(
	/usr/local/bin
	/usr/local/sbin
	/usr/bin
	/bin
	/usr/sbin
	/sbin
	~/.local/bin
	$path
)

# Platform specific variables.
case $OSTYPE {
	darwin*)
		# assuming brew --prefix is /usr/local
		# see https://apple.stackexchange.com/questions/69223/how-to-replace-mac-os-x-utilities-with-gnu-core-utilities
		export GNU_COREUTILS_HOME='/usr/local/opt/coreutils/libexec/gnubin'
		export GNU_COREUTILS_MAN_HOME='/usr/local/opt/coreutils/libexec/gnuman'
		export GNU_FINDUTILS_HOME='/usr/local/opt/findutils/libexec/gnubin'
		export GNU_FINDUTILS_MAN_HOME='/usr/local/opt/findutils/libexec/gnuman'
		export GNU_SED_HOME='/usr/local/opt/gnu-sed/libexec/gnubin'
		export GNU_SED_MAN_HOME='/usr/local/opt/gnu-sed/libexec/gnuman'
		export GNU_GETOPT_HOME='/usr/local/opt/gnu-getopt/libexec/gnubin'
		export GNU_GETOPT_MAN_HOME='/usr/local/opt/gnu-getopt/libexec/gnuman'
		export CURL_HOME='/usr/local/opt/curl/bin'
		export CURL_MAN_HOME='/usr/local/opt/curl/share/man'
		export NCURSES_HOME='/usr/local/opt/ncurses/bin'
		export OPENSSL_HOME='/usr/local/opt/openssl/bin'
		export OPENSSL_MAN_HOME='/usr/local/opt/openssl/man'
		export PYTHON_SYMLINKS_HOME='/usr/local/opt/python/libexec/bin'
		export PYTHONUSERBASE="$HOME/.local/"
		export VSCODE_USERDIR="$HOME/Library/Application Support/Code/User"
		export LATEX_HOME='/Library/TeX/texbin' # see brew info BasicTeX
		export RUBY_HOME='/usr/local/opt/ruby/bin' 
		export RUBY_GEM='/usr/local/lib/ruby/gems/3.0.0/bin'

		path=(
			$GNU_COREUTILS_HOME
			$GNU_FINDUTILS_HOME
			$GNU_SED_HOME
			$GNU_GETOPT_HOME
			$CURL_HOME
			$NCURSES_HOME
			$OPENSSL_HOME
			$PYTHON_SYMLINKS_HOME
			$LATEX_HOME
			$RUBY_HOME
			$RUBY_GEM
			$path
		)

		manpath=(
			$GNU_COREUTILS_MAN_HOME
			$GNU_FINDUTILS_MAN_HOME
			$GNU_SED_MAN_HOME
			$GNU_GETOPT_MAN_HOME
			$CURL_MAN_HOME
			$OPENSSL_MAN_HOME
			$manpath
		)
		;;
	*) export VSCODE_USERDIR="$HOME/Code/User"
	;;
}

# Basics
export TERM='xterm-256color'
export EDITOR='nvim'
export PAGER='less'
export BROWSER='open'

# Default Config and Cache Home
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

# Locale
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'

# man
export MANWIDTH='100' # Fixed line width for man pages.
export MANPAGER="nvim +'set filetype=man' -"

# nvim
export NVIM_RPLUGIN_MANIFEST="$HOME/.vim/cache/share/rplugin.vim"
	# Create symbolic links for neovim and vim configs.
	if ! [[ -L ~/.vim/vimrc ]] { ln -s ~/.vim/init.vim ~/.vim/vimrc }
	if ! [[ -L ~/.config/nvim ]] { ln -s ~/.vim ~/.config/nvim }

# fzf
export FZF_DEFAULT_COLORS='--color=dark,fg:-1,bg:-1,hl:4,fg+:7,bg+:8,gutter:-1,hl+:4,info:8,border:8,prompt:4,pointer:3,marker:3,spinner:8,header:6'
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_COLORS \
	--exact \
	--no-multi \
	--no-mouse \
	--height='40%' \
	--layout='reverse' \
	--inline-info \
	--no-bold"
export FZF_COMPLETION_TRIGGER="**"

# bat
export BAT_CONFIG_PATH="$HOME/.config/bat/bat.conf"

# less
export LESS="\
	--ignore-case \
	--tilde \
	--chop-long-lines \
	--status-column \
	--LONG-PROMPT \
	--jump-target=10 \
	--RAW-CONTROL-CHARS \
	--clear-screen \
	--silent \
	--tabs=4 \
	--shift=5"
export LESSHISTFILE="$HOME/.config/less/lesshistory" # Command and search history file.
export LESSKEYRC="$HOME/.config/less/lesskey" # Path of the uncompiled lesskey file.
export LESSKEY="$LESSKEYRC.lwc" # Path of the compiled lesskey file.
export LESS_TERMCAP_md=$'\e[01;34m' # Turn on bold mode.
export LESS_TERMCAP_me=$'\e[0m' # Turn off all attributes.
export LESS_TERMCAP_mh=$'\e[2m' # Turn on dim mode.
export LESS_TERMCAP_mr=$'\e[7m' # Turn on reverse mode.
export LESS_TERMCAP_se=$'\e[27;0m' # Exit standout mode.
export LESS_TERMCAP_so=$'\e[1;33m' # Begin standout mode.
export LESS_TERMCAP_ue=$'\e[24;0m' # Exit underline mode.
export LESS_TERMCAP_us=$'\e[4;1;38;5;250m' # Begin underline mode.

# fasd
export _FASD_DATA=$ZDOTDIR/cache/.fasd

# golang, from http://sourabhbajaj.com/mac-setup/Go/README.html
export GOPATH=$HOME/go # default
export GOROOT=/usr/local/opt/go/libexec
path=(
	$GOPATH/bin
	$GOROOT/bin
	$path
)

# rust, see rustup
export CARGO_HOME=$HOME/.cargo
path=(
	$CARGO_HOME/bin
	$path
)

# vscode
if ! [[ -L "$VSCODE_USERDIR/settings.json" ]] {
	ln -sf ~/.config/vscode/*.json "$VSCODE_USERDIR"
}

# ripgrep
export RIPGREP_CONFIG_PATH=$HOME/.config/ripgrep/rc

# kerl / erlang
if [[ -f "$HOME/.kerlrc" ]] . "$HOME/.kerlrc"

# direnv (0s)
if (( $+commands[direnv] )) {
	eval "$(direnv hook zsh)"
}
