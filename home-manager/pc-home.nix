{
  inputs,
  ...
}:
{
  imports = [
    ../packages/home.nix

    ../modules/astronvim.nix
    ../modules/firefox.nix
    # ../modules/zsh.nix
    ../modules/git.nix
    ../modules/litexl.nix
    ../modules/vscode.nix
    ../modules/starship.nix

    ../modules/ghostty.nix
    ../modules/kitty.nix
    ../modules/alacritty.nix
    ../modules/wezterm.nix

    # --Disable fish for learning purposes--
    # Revive fish
    ../modules/fish.nix
    inputs.nix-xl.homeModules.nix-xl
  ];

  home.username = "sae";
  home.homeDirectory = "/home/sae";

  programs.zoxide.enable = true;
  programs.zoxide.enableFishIntegration = true;

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "25.05";
}
