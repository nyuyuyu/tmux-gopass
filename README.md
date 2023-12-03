# tmux-gopass

This plugin calls [gopass](https://www.gopass.pw/) via tmux.


## Requirement

- Interactive filtering tool(e.g. [peco](https://github.com/peco/peco), [fzf](https://github.com/junegunn/fzf))


## Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'nyuyuyu/tmux-gopass'

Hit `prefix + I` to fetch the plugin and source it.

Add `@gopass-new-pane-key`, `@gopass-vertical-split-pane-key` and/or `@gopass-horizontal-split-pane-key` in `.tmux.conf`:

    set -g @gopass-new-pane-key 'C-g'

Finally, reload tmux:

    // type this in terminal
    $ tmux source-file ~/.tmux.conf


## Manual Installation

Clone the repo:

    $ git clone https://github.com/nyuyuyu/tmux-gopass ~/clone/path

Add this line to the bottom of `.tmux.conf`:

    run-shell ~/clone/path/gopass.tmux

Add `@gopass-new-pane-key`, `@gopass-vertical-split-pane-key` and/or `@gopass-horizontal-split-pane-key` in `.tmux.conf`:

    set -g @gopass-new-pane-key 'C-g'

Finally, reload tmux:

    // type this in terminal
    $ tmux source-file ~/.tmux.conf


## Plugin options

| Options                             | Description                                                                  |
|:------------------------------------|:-----------------------------------------------------------------------------|
| `@gopass-filter-program`            | Path to interactive filtering program. (default: `peco`)                     |
| `@gopass-path`                      | Path to `gopass` binary.                                                     |
| `@gopass-pane-size`                 | Size of pane to display `gopass` command. (e.g. `10`)                        |
| `@gopass-pane-percentage`           | Percentage of pane to display `gopass` command. (e.g. `50`)                  |
| `@gopass-new-pane-key`              | Key binding for opening new full size pane to display `gopass` command.      |
| `@gopass-vertical-split-pane-key`   | Key binding for opening vertically split pane to display `gopass` command.   |
| `@gopass-horizontal-split-pane-key` | Key binding for opening horizontally split pane to display `gopass` command. |

