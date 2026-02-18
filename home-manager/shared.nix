{
  inputs,
  ...
}:

{
  imports = [
    ../packages/home.nix

    ../modules/additions.nix
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

    ../modules/fish.nix
    inputs.nix-xl.homeModules.nix-xl
  ];

}
