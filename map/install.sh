#!/bin/sh
[ "$(uname -s)" != "Darwin" ] && exit 0
ln -sf "$DOTFILES"/map/local.map.plist ~/Library/LaunchAgents/local.map.plist
launchctl load -w ~/Library/LaunchAgents/local.map.plist
