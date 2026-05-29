
if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
end
set -x COLORTERM truecolor
set -x OPENCODE_ENABLE_EXA 1

# Created by `pipx` on 2024-07-03 20:37:58
set PATH $PATH /home/hexatron/.local/bin
abbr -a -- add 'cat bat --theme=ansi'
abbr -a -- cat 'bat --theme=ansi'

# Composio CLI
set --export COMPOSIO_INSTALL_DIR "/home/hexatron/.composio"
set --export PATH $COMPOSIO_INSTALL_DIR $PATH

# terminal-wakatime setup
set -gx PATH "$HOME/.wakatime" $PATH
terminal-wakatime init fish | source
