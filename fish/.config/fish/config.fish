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
alias bakkes="protontricksfp -c '~/.var/app/com.valvesoftware.Steam/.steam/steam/compatibilitytools.d/GE-Proton7-42/files/bin/wine64 /home/koen/.local/share/Steam/steamapps/compatdata/252950/pfx/drive_c/Program\ Files/BakkesMod/BakkesMod.exe' 252950"
alias steamui="flatpak run com.valvesoftware.Steam -gamepadui &"
alias nvide="neovide --multigrid"
alias protontricksfp='flatpak run com.github.Matoking.protontricks'

# tmux stuff
alias to="turbotmux open"
alias tc="turbotmux close"
alias tp="turbotmux project"
alias tn="turbotmux new"

alias lg="lazygit"
alias gu="gitui"

fish_add_path $HOME"/.local/bin/"
fish_add_path $HOME"/.cargo/bin"
# fish_add_path $HOME"/.asdf/bin"

# pnpm
set -gx PNPM_HOME $HOME"/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

# source ~/.asdf/asdf.fish

# nix shit
alias shell="export NIXPKGS_ALLOW_INSECURE=1 && nix shell --impure"


# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# zoxide
zoxide init --cmd cd fish | source
