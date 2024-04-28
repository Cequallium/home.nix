{ config, pkgs, ... }:

{

  imports =
    [ ./sh.nix ./git.nix ./vscode/vscodium.nix ./nvim/nvim.nix ./dev.nix ];
  nixpkgs.config.allowUnfree = true;
  home.username = "cql";
  home.homeDirectory = "/home/cql";

  home.stateVersion = "23.11";

  home.packages = with pkgs; [
    kdePackages.kcalc
    kdePackages.kdenlive
    kdePackages.dragon
    kdePackages.filelight
    kdePackages.kclock
    kdePackages.plasma-systemmonitor
    kdePackages.ktorrent
    xwaylandvideobridge
    # francis

    prismlauncher
    spotube
    inkscape
    gimp
    blender
    chromium
    heroic
    vesktop
    fzf
    thunderbird
    tlrc
    gh
    zoom-us
    nixfmt-rfc-style
    unzip

    wl-clipboard
    ripgrep
    aseprite
    kde-rounded-corners 
    
    jetbrains-mono
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];
  services.kdeconnect.enable = true;

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  home.sessionVariables = { EDITOR = "nvim"; };
  programs.home-manager.enable = true;
}
