{ pkgs, ... }:

{
  programs.vscode = {
    enableUpdateCheck = false;
    extensions = with pkgs.vscode-extensions; [
      catppuccin.catppuccin-vsc
      timonwong.shellcheck
      eamodio.gitlens
    ];

    userSettings = builtins.fromJSON (builtins.readFile ./settings.json);
  };
  stylix.targets.vscode.enable = true;
}
