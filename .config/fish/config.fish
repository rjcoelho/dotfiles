# see https://fishshell.com/

# Paths
set -gx PATH $HOME/.bin \
    $PATH

# Lang Settings
set -gx LANG en_US.UTF-8
set -gx LANGUAGE en_US.UTF-8
set -gx LC_ALL en_US.UTF-8

# boostrap fisher, see https://github.com/jorgebucaran/fisher
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end
alias fisher-update="fisher ls"
alias fisher-update="fisher self-update"
alias fisher-reset="rm ~/.config/fish/{completions,conf.d,functions,fish_variables} -rf"

if command -sq fzf
  # Utilities
  set -l dirpreview "--preview 'tree --dirsfirst -C {} | head -200'"

  # FZF Config
  set -gx FZF_DEFAULT_OPTS "--height 40% --reverse --border --multi --cycle --inline-info"
  # Options for history mode
  set -gx FZF_CTRL_R_OPTS "--no-multi --prompt='history> ' --preview 'echo {}' --preview-window='down:3:wrap'"
  # Options for CD mode
  set -gx FZF_ALT_C_OPTS "--no-multi --select-1 --exit-0 --prompt='cd> ' $dirpreview"
  # Options for file mode
  set -gx FZF_CTRL_T_OPTS "--prompt='file> ' --select-1 --exit-0 --preview 'if test -e {}; begin; highlight -O ansi -l {} ^/dev/null; or cat {}; or tree --dirsfirst -C {}; end ^/dev/null | head -200;end'"
  # Options for Z mode
  set -gx FZF_Z_OPTS $dirpreview
end

# ripgrep config
set -gx RIPGREP_CONFIG_PATH $HOME/.ripgreprc

# golang
test -e ~/.go; and set -gx GOPATH ~/.go
test -e ~/.go/bin; and set -gx PATH $PATH $GOPATH/bin

# kerl / erlang
test -e ~/.kerlrc ; and source ~/.kerlrc

# direnv
test -e /usr/local/bin/direnv ; and eval (direnv hook fish)
