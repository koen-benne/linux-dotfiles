if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx EDITOR nvim
set -gx FZF_DEFAULT_OPTS "--height 40% --layout=reverse --border"

set fish_greeting

alias l="ls -la"
# alias xi="sudo xbps-install"
alias xr="sudo xbps-remove"
alias spt="spotify-tui"
alias ioslack=$HOME"/.scripts/ioslack.sh & && disown"
alias bakkes="WINEESYNC=1 protontricks -c '~/.steam/steam/compatibilitytools.d/GE-Proton7-42/files/bin/wine64 /home/koen/.local/share/Steam/steamapps/compatdata/252950/pfx/drive_c/Program\ Files/BakkesMod/BakkesMod.exe' 252950"
alias steamui="steam -gamepadui &"
alias nvide="neovide --multigrid"

# tmux stuff
alias to="turbotmux.sh open"
alias tc="turbotmux.sh close"
alias tp="turbotmux.sh project"
alias tn="turbotmux.sh new"
alias lg="lazygit"

fish_add_path $HOME"/.local/bin/"
fish_add_path $HOME"/.cargo/bin"
fish_add_path $HOME"/.asdf/bin"

# pnpm
set -gx PNPM_HOME $HOME"/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

source ~/.asdf/asdf.fish


