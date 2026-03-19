{ ... }: {
  programs.alacritty = {
    enable = true;

    theme = "gruvbox_dark";

    settings = {
      keyboard = {
        bindings = [
          {
            key = "I";
            mods = "Alt";
            action = "ToggleViMode";
          }
        ];
      };

      scrolling = {
        history = 100000;
      };

      window = {
        decorations = "none";
        startup_mode = "SimpleFullscreen";
        padding = {
          x = 5;
          y = 0;
        };
      };

      font = {
        size = 19;

        normal = {
          family = "Iosevka";
          style = "Regular";
        };

        bold = {
          family = "Iosevka";
          style = "Bold";
        };

        italic = {
          family = "Iosevka";
          style = "Italic";
        };
      };
    };
  };
}
