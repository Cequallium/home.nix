{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    extraPackages = with pkgs; [
      gopls
      golines
      goimports-reviser
      pyright
      lua-language-server
      luaformatter
      nodePackages.svelte-language-server
      nodePackages.typescript-language-server
      nodePackages.prettier
      emmet-language-server
      markdown-oxide
      zls
      zig
    ];
  };
}
