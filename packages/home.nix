{ inputs
, pkgs
, ...
}:
let
  system = pkgs.system;
in
{
  home.packages = with pkgs;
    [
      # archives
      zip
      xz
      unzip
      p7zip

      # utils
      ripgrep # recursively searches directories for a regex pattern
      jq # A lightweight and flexible command-line JSON processor
      yq-go # yaml processor https://github.com/mikefarah/yq
      eza # A modern replacement for ‘ls’
      fzf # A command-line fuzzy finder
      fd

      figma-linux # figma
      onefetch # neofetch for git repository
      microfetch # minimal neofetch
      fastfetch # fast neofetch
      neofetch # neofetch
      # nix related
      # it provides the command `nom` works just like `nix`
      # with more details log output
      nix-output-monitor

      # productivity
      glow # markdown previewer in terminal

      btop # replacement of htop/nmon
      iotop # io monitoring
      iftop # network monitoring

      # system call monitoring
      strace # system call monitoring
      ltrace # library call monitoring
      lsof # list open files

      # system tools
      sysstat
      lm_sensors # for `sensors` command
      ethtool
      pciutils # lspci
      usbutils # lsusb

      zoxide # for faster navigation
      ayugram-desktop # telegram
      # spotify # spotify
      yandex-music # yandex, idk why do i need it at all
      discord # same with yandex
      wpsoffice # for docs
      lite-xl # lightweight code editor
      yazi # terminal vile explorer
      ffmpeg # shame on you if you don't know it
      yt-dlp # youtube video downloader
      obs-studio # video recorder
      feh # lightweight image viewer
      swaybg # wallpaper tool for wayland compositors
      gradia # screenshot tool

      fluffychat
    ]
    ++ [
      inputs.wall-rs.packages.${system}.default
      inputs.sl.packages.${system}.default
      inputs.awzod.packages.${system}.default
    ];
}
