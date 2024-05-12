{ pkgs, ... }:

{
  imports = [ ./config.nix ];
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
  };
}
