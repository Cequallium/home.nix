{ config, ... }:

{
  programs.command-not-found.enable = true;

  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      update = "sudo nixos-rebuild switch --flake /etc/nixos/#default";
      zj = "zellij";
      za = "zellij a";
    };
    dotDir = ".config/zsh";
    initExtra = "
        bindkey '^[[1;5D' backward-word;\n
        bindkey '^[[1;5C' forward-word;\n
    ";
    defaultKeymap = "emacs";
    envExtra = "";
    history.size = 10000;
    history.path = "${config.xdg.dataHome}/.local/share/zsh/history";
    history.extended = true;
    history.ignoreDups = true;
  };

  programs.starship = {
    enable = true;
    settings = {
      battery.disabled = true;
    };
  };

  programs.zoxide.enable = true;

  programs.atuin.enable = true;

  programs.eza.enable = true;

  programs.btop.enable = true;

  programs.zellij.enable = true;

  programs.bat.enable = true;
}
