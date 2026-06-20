{ ... }: {
  services.openssh = {
    enable = true;
    ports = [ 22139 ];
    openFirewall = true;
    settings = {
      PasswordAuthentication = true;
      PermitRootLogin = "no";
      UseDns = true;
      AllowUsers = null;
      MaxAuthTries = 3;
      PerSourcePenalties = "crash:3600s authfail:3600s max:86400s";
    };
  };
}
