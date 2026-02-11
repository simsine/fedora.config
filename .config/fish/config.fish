# Initalize on interactive shell
if status is-interactive
  [ "$(command -v starship)" ] && eval "$(starship init fish)"
  [ "$(command -v atuin)" ] && eval "$(atuin init fish)"
  [ "$(command -v zoxide)" ] && eval "$(zoxide init fish)"
end

# Aliases
alias ff="fastfetch"
alias zola="flatpak run org.getzola.zola"
alias systui="systemctl-tui"
alias ls="eza --icons=auto"
alias lsa="eza -lah --git-ignore --git --icons=auto --group-directories-first"
alias cat="bat -p"
alias grep="rg"

# Env variables
set NVM_DIR $HOME/.nvm
set nvm_default_version lts/krypton

set DOCKER_HOST unix:///run/user/$UID/podman/podman.sock
set PODMAN_COMPOSE_WARNING_LOGS false

set BUN_INSTALL $HOME/.bun
set -gx PATH "$BUN_INSTALL/bin:$PATH"

# Path variables
fish_add_path /home/simsine/.dotnet/tools

# pnpm
set -gx PNPM_HOME "/home/simsine/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
