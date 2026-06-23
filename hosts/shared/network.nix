{hostname, ...}: {
  # hostname is derived from specialArgs in nixosConfiguration declaration file.
  # check nihh/hosts/${device}/default.nix

  # Enable networking
  networking.networkmanager.enable = true;
  networking.hostName = hostname;

  # networking.wireless.enable = true; # Enables wireless support via wpa_supplicant.

  networking.hosts = {
    "91.212.89.25" = ["git.oss.uzinfocom.uz"];
  };

  networking.useDHCP = false;
  networking.networkmanager.insertNameservers = [
    "1.1.1.1"
  ];

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
}
