{ nixpkgs
, home-manager
, nixos-hardware
, nur
, ...
}@ inputs:
nixpkgs.lib.nixosSystem {
  specialArgs = { inherit inputs; };

  modules = [
    inputs.spicetify-nix.nixosModules.default
    ./configuration.nix

    nixos-hardware.nixosModules.lenovo-thinkpad-t14-intel-gen6

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
        users.t34 = import ../../home-manager/pad-home.nix;
      };
    }
  ];
}


