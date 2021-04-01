#!/bin/sh
URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/FiraCode.zip"

install() {
	curl -L -s -o /tmp/fura.zip "$URL"
	unzip -j /tmp/fura.zip '*/ttf/*' -d "$1"
}

if [ "$(uname -s)" = "Darwin" ]; then
	if command -v brew >/dev/null 2>&1; then
		brew tap homebrew/cask-fonts
		brew list --cask font-fira-code-nerd-font >/dev/null 2>&1 || brew install --cask font-fira-code-nerd-font
		brew list --cask font-fira-mono-nerd-font >/dev/null 2>&1 || brew install --cask font-fira-mono-nerd-font
	else
		install ~/Library/Fonts
	fi
else
	mkdir -p ~/.fonts
	install ~/.fonts
fi
