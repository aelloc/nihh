{
  nixpkgs,
  firefox-addons,
  home-manager,
  ...
}@inputs:
nixpkgs.lib.nixosSystem {
  specialArgs = {
    inherit inputs;
  }
  // {
    hostname = "sae";
  };
  modules = [
    ./configuration.nix
    inputs.spicetify-nix.nixosModules.default

    {
      nixpkgs.overlays = [
        firefox-addons.overlays.default
      ];
    }
  ]
  ++ [
    home-manager.nixosModules.home-manager
    {
      home-manager = {
        useGlobalPkgs = true;

        extraSpecialArgs = { inherit inputs; };
        users.phantom = import ../../home-manager/rook.nix;
      };
    }
  ];
}
