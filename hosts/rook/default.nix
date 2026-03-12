{ nixpkgs
, home-manager
, nur
, nid
, ...
} @ inputs:
nixpkgs.lib.nixosSystem {
  specialArgs = { inherit inputs; };
  modules = [
    inputs.spicetify-nix.nixosModules.default
    ./configuration.nix
    nid.nixosModules.default

    nur.modules.nixos.default
    nur.legacyPackages."x86_64-linux".repos.iopq.modules.xraya

    home-manager.nixosModules.home-manager

    {
      home-manager = {
        sharedModules = [
          nur.modules.homeManager.default
        ];
        useGlobalPkgs = true;
        # useUserPackages = true;
        # backupFileExtension = "backup";

        extraSpecialArgs = { inherit inputs; };
        users.sae = import ../../home-manager/pc-home.nix;
      };
    }
  ];
}
