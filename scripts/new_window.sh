#!/usr/bin/env bash

# $1 ... tmux pane ID

export GOPASS_NOCOLOR=true

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/variables.sh"

if ! which $gopass_path > /dev/null 2>&1; then
    tmux display-message "$gopass_path is not found."
    return
fi

if ! which $gopass_filter_program > /dev/null 2>&1; then
    tmux display-message "$gopass_filter_program is not found."
    return
fi

tmux new-window tmux\ send-keys\ \-t\ $1\ \"\$\(export\ GPG_TTY\=\$\(tty\)\;\ $gopass_path\ show\ \-o\ \-f\ \$\($gopass_path\ list\ \-f\ \|\ $gopass_filter_program\)\ 2\>\ \/dev\/null\)\"
