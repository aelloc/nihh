{...}: let
  keybindings = builtins.readFile ./keybindings.toml;
in {
  programs.helix = {
    enable = true;

    extraConfig = keybindings;
  };
}
