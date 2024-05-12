{ pkgs, ... }:

{
  home.packages = with pkgs; [
    cargo
    rustc
    bun
    gcc
    # try to update these to new version...
    flutter
    nodejs
    scala_3
    gleam
    nixd
    lazygit # TODO: add custome nix config
    git
    podman
    zig_0_12
    zig-shell-completions
    godot_4
  ];
  programs.go.enable = true;
}
