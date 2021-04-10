#!/bin/sh
test -d $HOMEBREW_PREFIX/opt/fzf/shell || return 0

export FZF_COMPLETION_TRIGGER='**'

# shellcheck disable=SC1091
. $HOMEBREW_PREFIX/opt/fzf/shell/completion.zsh
