# source plug.kak script
source "%val{config}/plugins/plug.kak/rc/plug.kak"
plug "andreyorst/plug.kak" domain gitlab.com noload config %{
    set-option global plug_always_ensure true
    set-option global plug_profile true
}

# fuzzy-finder
plug "andreyorst/fzf.kak" config %{
    map -docstring 'fzf mode' global normal '<c-p>' ': fzf-mode<ret>'
} defer fzf %{
    set-option global fzf_preview_width '65%'
    set-option global fzf_project_use_tilda true
    set-option global fzf_highlight_command 'bat'
    set-option global fzf_sk_grep_command 'rg -u' # default 'grep -RHn'
}

# lf file explorer
plug "TeddyDD/kakoune-lf"

# auto-pairs port from vim
plug "alexherbo2/auto-pairs.kak"

# language-server protocol
plug "ul/kak-lsp" do %{
    cargo install --locked --force --path .
}