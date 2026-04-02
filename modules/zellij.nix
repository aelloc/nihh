{ ... }: {
  programs.zellij = {
    enable = false;
    enableFishIntegration = true;

    settings = {
      theme = "gruvbox_dark";
    };
  };
}
