{ pkgs, ... }:
{
  imports =
    [ ./stylix.nix ./dev.nix ./sh.nix ./vscode/vscodium.nix ./nvim/nvim.nix ];
  nixpkgs.config.allowUnfree = true;

  home.username = "cql";
  home.homeDirectory = "/home/cql";

  home.stateVersion = "23.11";

  home.packages = with pkgs; [
    kdePackages.kcalc
    # kdePackages.kdenlive
    # kdePackages.filelight
    kdePackages.kclock
    kdePackages.plasma-systemmonitor
    kdePackages.akregator
    # xwaylandvideobridge
    qbittorrent
    spotube
    inkscape
    gimp
    blender
    vlc

    prismlauncher
    heroic
    vesktop
    thunderbird
    tlrc
    gh
    nixfmt-rfc-style
    unzip

    ripgrep
    p7zip
    
    freetube
    spotube
    mullvad-browser
    audacious
    audacious-plugins
    # unrar-free
    ollama
    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];
  # services.kdeconnect.enable = true;
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
    ".config/zellij".source = ./config/zellij;
  };
  
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # home.keyboard = {
  #   layout = "us";
  #   variant = "eng";
  # };
  programs.home-manager.enable = true;
}
