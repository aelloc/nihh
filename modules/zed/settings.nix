{
  cli_default_open_behavior = "new_window";
  ui_font_size = 18;
  buffer_font_size = 15;
  disable_ai = true;
  vim_mode = true;
  vim = {
    use_system_clipboard = "always";
  };
  scrollbar = {
    show = "auto";
  };
  inlay_hints = {
    enabled = true;
  };
  agent = {
    enabled = false;
  };
  buffer_font_family = "Maple Mono Normal NL NF";
  relative_line_numbers = "enabled";
  cursor_blink = false;
  theme = {
    mode = "dark";
    light = "One Light";
    dark = "Gruvbox Dark Hard";
  };
  load_direnv = "shell_hook";
  project_panel = {
    dock = "right";
    diagnostic_badges = true;
  };
  languages = {
    Nix = {
      inlay_hints = {
        enabled = true;
      };
    };
    Rust = {
      colorize_brackets = true;
      inlay_hints = {
        enabled = true;
      };
    };
  };
  auto_install_extensions = {
    env = true;
    git-firefly = true;
    make = true;
    material-icon-theme = true;
    nix = true;
    rust = true;
    toml = true;
    zig = true;
  };
}
