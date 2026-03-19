{ ... }: {
  services.kanata = {
    enable = true;

    keyboards = {
      internalKeyboard = {
        devices = [ "/dev/input/by-path/platform-i8042-serio-0-event-kbd" ];
        extraDefCfg = "process-unmapped-keys yes";
        configFile = ./kanata.kbd;
      };
    };
  };
}
