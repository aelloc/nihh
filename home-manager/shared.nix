{ inputs, ... }:
let
  modules = import ../lib/folder.nix { };
in
{
  imports =
    modules.modules
    ++ [
      ../packages/home.nix
      inputs.nix-xl.homeModules.nix-xl
    ];
}
