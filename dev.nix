{ pkgs, ... }:

{
  home.packages = with pkgs; [
    cargo
    rustc
    bun
    gcc
    # try to update these to new version...
    jetbrains.idea-ultimate
    jetbrains-toolbox
    jetbrains.goland
    flutter
    nodejs
    scala_3
    gleam
    nixd
    neovide
    julia
    lazygit # TODO: add custome nix config
    git
  ];
  programs.go.enable = true;

}
