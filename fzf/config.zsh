#!/bin/sh
test -d $HOMEBREW_PREFIX/opt/fzf/shell || return 0
# shellcheck disable=SC1091
. $HOMEBREW_PREFIX/opt/fzf/shell/key-bindings.zsh
