if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

alias l="ls -la"
alias xi="sudo xbps-install"
alias xr="sudo xbps-remove"
alias npm="pnpm"
alias spt="spotify-tui"
alias ioslack="/home/koen/.scripts/ioslack.sh & && disown"
alias lg="lazygit"
alias typioca="~/Documents/builds/typioca/execs/typioca-linux-amd64"

fish_add_path $HOME'/.local/bin/'
fish_add_path $HOME'/.platformsh/bin'

# pnpm
set -gx PNPM_HOME "/home/koen/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
