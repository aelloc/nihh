{ pkgs, ... }: {
  programs.kitty = {
    enable = true;

    themeFile = "gruvbox-dark";

    settings = {
      cursor_trail = 3;
    };
    
    font = {
      name = "Iosevka";
      package = pkgs.iosevka;
    };
  };
}
