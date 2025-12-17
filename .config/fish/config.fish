starship init fish | source

set NVM_DIR $HOME/.nvm
set nvm_default_version lts/krypton

alias ff="fastfetch"
alias zola="flatpak run org.getzola.zola"
alias st="systemctl-tui"

fish_add_path /home/simsine/.dotnet/tools

# pnpm
set -gx PNPM_HOME "/home/simsine/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
