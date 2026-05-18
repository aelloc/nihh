{ ... }:
let
  keybindings = builtins.readFile ./keybindings.toml;
in
{
  programs.helix = {
    enable = false;

    extraConfig = keybindings;
  };
}
