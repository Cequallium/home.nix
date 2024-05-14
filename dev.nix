{ pkgs, ... }:

{
  home.packages = with pkgs; [
    cargo
    rustc
    bun
    gcc
    # try to update these to new version...
    # flutter
    nodejs
    gleam
    erlang
    nixd
    lazygit # TODO: add custom nix config
    git
    podman
    zig_0_12
    zig-shell-completions
    godot_4
    wl-clipboard
    # python313Full
    # pipx
    # pipenv
  ];
  programs.go.enable = true;

}
