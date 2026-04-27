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
alias sudo="sudo-rs"
alias visudo="visudo-rs"

# Env variables
set NVM_DIR $HOME/.nvm
set nvm_default_version lts/krypton

set DOCKER_HOST unix:///run/user/$UID/podman/podman.sock
set PODMAN_COMPOSE_WARNING_LOGS false

set BUN_INSTALL $HOME/.bun
set -gx PATH "$BUN_INSTALL/bin:$PATH"

# Path variables
fish_add_path $HOME/.dotnet/tools

# pnpm
set -gx PNPM_HOME "/home/simsine/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
	set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# >>> vscode python
# version: 0.1.1
if not set -q VSCODE_PYTHON_AUTOACTIVATE_GUARD
    set -gx VSCODE_PYTHON_AUTOACTIVATE_GUARD 1
    if test "$TERM_PROGRAM" = "vscode"; and set -q VSCODE_PYTHON_FISH_ACTIVATE
        eval $VSCODE_PYTHON_FISH_ACTIVATE
    end
end
# <<< vscode python
