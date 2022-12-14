if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx EDITOR nvim

set fish_greeting

alias l="ls -la"
alias xi="sudo xbps-install"
alias xr="sudo xbps-remove"
alias spt="spotify-tui"
alias ioslack="/home/koen/.scripts/ioslack.sh & && disown"
alias lg="lazygit"
alias nvide="neovide --multigrid"
alias bakkes="WINEFSYNC=1 protontricks -c '~/.steam/steam/compatibilitytools.d/GE-Proton7-42/files/bin/wine64 /home/koen/.local/share/Steam/steamapps/compatdata/252950/pfx/drive_c/Program\ Files/BakkesMod/BakkesMod.exe' 252950"

fish_add_path $HOME'/.local/bin/'
fish_add_path $HOME'/.platformsh/bin'
fish_add_path $HOME'/.cargo/bin'
fish_add_path $HOME'/.asdf/bin'

# pnpm
set -gx PNPM_HOME "/home/koen/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

source ~/.asdf/asdf.fish
