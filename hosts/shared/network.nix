{ ... }:
{
  networking.hostName = "sae"; # Define your hostname.
  # networking.wireless.enable = true; # Enables wireless support via wpa_supplicant.

  networking.useDHCP = false;
  networking.networkmanager.insertNameservers = [
    "1.1.1.1"
  ];

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
}
