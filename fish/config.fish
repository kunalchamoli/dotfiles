if status is-interactive
    if not set -q SSH_CLIENT
        set fish_greeting ""
        thefuck --alias | source 
        set -x EDITOR "code --wait --new-window"
        # Use kitty's default terminal type locally
        set -x TERM xterm-kitty
        # Call the neofetch function with cooldown
        neofetch

        fish_prompt
        alias ssh "TERM=xterm-256color command ssh"
    else
        set fish_greeting ""
        set -x TERM xterm-256color
    end