{ ... }: {
  programs.zoxide.enable = true;
  programs.zoxide.enableFishIntegration = true;

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  programs.btop = {
    enable = true;
    settings = {
      color_theme = "gruvbox_dark";
    };
  };
}
