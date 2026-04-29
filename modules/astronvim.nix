{ pkgs, ... }: {
  xdg.configFile.astronvim = {
    source = ../astronvim;
    recursive = true;
  };

  xdg.configFile.neovim = {
    source = ../neovim;
    recursive = true;
  };

  programs.neovim = {
    enable = true;

    extraConfig = "";

    extraPackages = with pkgs; [
      nodejs
      selene
      nixd
      deadnix
      statix
      gdu
      lazygit
      python3

      lua-language-server
      luarocks
      stylua

      tree-sitter
    ];
  };
}
