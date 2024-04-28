{ config, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      update = "sudo nixos-rebuild switch --flake /etc/nixos/#default";
      clean = "sudo nix-collect-garbage -d && nix-collect-garbage -d && nix store optimise && sudo /run/current-system/bin/switch-to-configuration boot";
    };

    initExtra = "bindkey '^[[1;5D' backward-word;
        bindkey '^[[1;5C' forward-word";

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/.local/share/zsh/history";
    history.extended = true;

    defaultKeymap = "viins";
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
}
