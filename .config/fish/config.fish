starship init fish | source
zoxide init fish | source

alias ff="fastfetch"
alias zola="flatpak run org.getzola.zola"
alias systui="systemctl-tui"
alias ls="eza --icons=auto"
alias lsa="eza -lah --git-ignore --git --icons=auto"
alias cat="bat -p"
alias grep="rg"

set NVM_DIR $HOME/.nvm
set nvm_default_version lts/krypton

fish_add_path /home/simsine/.dotnet/tools

# pnpm
set -gx PNPM_HOME "/home/simsine/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
