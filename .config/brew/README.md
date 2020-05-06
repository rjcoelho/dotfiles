Install brew and bundles
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew tap Homebrew/bundle
brew bundle --file=~/.config/brew/Brewfile
```

Upgrade brewfile
```
brew bundle dump --file=~/.config/brew/Brewfile --force
brew bundle cleanup --file=~/.config/brew/Brewfile --force
```

Install xcode command line tools (needed by some brew formulas)
```
xcode-select --install
```