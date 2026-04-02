{ inputs
, pkgs
, ...
}: {
  environment.systemPackages = with pkgs; [
    vial
    qemu

    git
    vim
    wget
    micro
    curl
    bat
    jujutsu
    tokei
    cloc

    rustc
    cargo
    gcc
    pkg-config
    alejandra
    zsh
    fish
    starship
    element-desktop

    # fish plugins
    fishPlugins.done
    fishPlugins.fzf-fish
    fishPlugins.forgit
    fishPlugins.hydro
    fzf
    fishPlugins.grc
    grc

    powertop
    tlp
    resources
    deno
    zig
    gnome-screenshot
    gnome-tweaks
    gnome-extension-manager

    cloudflare-warp
  ] ++ [
    # inputs.uchar.packages.${system}.default
  ];
}
