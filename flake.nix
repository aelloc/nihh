{
  description = "My nihh configs.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";

    nix-xl.url = "github:PassiveLemon/nix-xl";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixos-hardware.url = "github:nixos/nixos-hardware/master";

    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    spicetify-nix.url = "github:Gerg-L/spicetify-nix";

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # nix-index-database
    nid = {
      url = "github:nix-community/nix-index-database";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    wall-rs.url = "github:ae5259/wall-rs";
    awzod.url = "github:ae5259/awzod";
    sl.url = "github:ae5259/statline";
  };

  outputs =
    { self
    , nixpkgs
    , ...

    } @ inputs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      nixosConfigurations.sae = import ./hosts/rook inputs;
      nixosConfigurations.t34 = import ./hosts/pad inputs;

      formatter.${system} = pkgs.nixpkgs-fmt;
      devShells.${system}.default = pkgs.mkShell {
        packages = with pkgs; [
          self.formatter.${system}

          nixd
          statix
          deadnix
          nixfmt-tree
        ];
      };
    };
}
