{ pkgs, ... }:

{
  home.packages = with pkgs; [
    cargo
    rustc
    bun
    nodejs
    gleam
    erlang
    nixd
    lazygit # TODO: add custom nix config
    git
    podman
    godot_4
    wl-clipboard
    gleam
    erlang
    zig
    go
  ];
}
