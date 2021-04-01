#!/bin/sh
if which brew >/dev/null 2>&1; then
	brew install getantibody/tap/antibody || brew upgrade antibody
else
	curl -sL https://git.io/antibody | sh -s
fi
/opt/homebrew/bin/antibody bundle <"$DOTFILES/antibody/bundles.txt" >~/.zsh_plugins.sh
/opt/homebrew/bin/antibody update
