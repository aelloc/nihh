{
  description = "My nihh configs.";

  inputs = {
    # nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
    nixpkgs-nv.url = "github:nixos/nixpkgs/ad798619ae7743933943f22d60acbefb073a251a";

    xinux-nixpkgs.url = "git+https://git.oss.uzinfocom.uz/xinux/nixpkgs?ref=nixos-unstable&shallow=1";

    nix-xl.url = "github:PassiveLemon/nix-xl";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixos-hardware.url = "github:nixos/nixos-hardware/master";

    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-data = {
      url = "github:xinux-org/nix-data";
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

    uchar.url = "github:uchar-org/cross/uchar/app/latest";
    # https://github.com/uchar-org/cross/blob/uchar/app/latest/flake.nix
    ayugram.url = "github:ndfined-crp/ayugram-desktop";

    wall-rs.url = "github:aelloc/wall-rs";
    awzod.url = "github:aelloc/awzod";
    sl.url = "github:aelloc/statline";
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
