# [vscode](https://github.com/Microsoft/vscode)

Generate and install extensions list [Command line extension management](https://code.visualstudio.com/docs/editor/extension-gallery#_command-line-extension-management)
```
code --list-extensions | sort >! ~/.config/vscode/extensions.list
cat ~/.config/vscode/extensions.list | xargs -L1 code --install-extension
```

See [vscode extensions marketplace](https://marketplace.visualstudio.com/VSCode) and [vscode themes](https://vscodethemes.com/)
