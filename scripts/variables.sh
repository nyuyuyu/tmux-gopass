# @gopass-filter-program
default_gopass_filter_program='peco'
gopass_filter_program=$(tmux show-option -gqv "@gopass-filter-program")
gopass_filter_program=${gopass_filter_program:-$default_gopass_filter_program}

# @gopass-path
default_gopass_path='gopass'
gopass_path=$(tmux show-option -gqv "@gopass-path")
gopass_path=${gopass_path:-$default_gopass_path}

# @gopass-pane-size
default_gopass_pane_size=''
gopass_pane_size=$(tmux show-option -gqv "@gopass-pane-size")
gopass_pane_size=${gopass_pane_size:-$default_gopass_pane_size}

# @gopass-pane-percentage
default_gopass_pane_percentage=''
gopass_pane_percentage=$(tmux show-option -gqv "@gopass-pane-percentage")
gopass_pane_percentage=${gopass_pane_percentage:-$default_gopass_pane_percentage}

# @gopass-new-pane-key
default_gopass_new_pane_key=''
gopass_new_pane_key=$(tmux show-option -gqv "@gopass-new-pane-key")
gopass_new_pane_key=${gopass_new_pane_key:-$default_gopass_new_pane_key}

# @gopass-vertical-split-pane-key
default_gopass_vsplit_pane_key=''
gopass_vsplit_pane_key=$(tmux show-option -gqv "@gopass-vertical-split-pane-key")
gopass_vsplit_pane_key=${gopass_vsplit_pane_key:-$default_gopass_vsplit_pane_key}

# @gopass-horizontal-split-pane-key
default_gopass_hsplit_pane_key=''
gopass_hsplit_pane_key=$(tmux show-option -gqv "@gopass-horizontal-split-pane-key")
gopass_hsplit_pane_key=${gopass_hsplit_pane_key:-$default_gopass_hsplit_pane_key}
