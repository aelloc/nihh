# My nihh configs.

~~There are some things I couldn't figure out to use with Nix so I'm leaving the
imperative way of these things.~~

~~`Flameshot` has been changed to `Gradia`~~

~~Spicetify works now~~

## Preface

This repository contains all of my learning process since installing NixOS. It
is pretty simple in my mind, but sometimes I find myself lost in these `.nix`
files not being able to figure out where is the thing I need. Moreover, some
blocks of code are blidnly copy-pasted, so after sometime I can't tell what it
does clearly, so I decided to document it for myself, maybe it serves as an
example for anyone who is reading this. One more time, keep in mind that it was
written to explain it to myself. Thanks

## Structure

### flake.nix

My nix flake currenrlty contains 4 outputs. They are:

- `nixosConfiguration` for my PC namely `rook` with user `sae`
- another `nixosConfiguration` for my ThinkPad namely just `pad` with used `t34`
- `nixpkgs-fmt` formatter for `x86_64-linux`
- devshell for `x86_64-linux` with nix language server, linter and etc.

The folder structure is also quite simple. `nixosConfiguration`s point to
`hosts/` folder for each device with `device/default.nix`. There is also a
folder called `shared` with shared NixOS related configuration, which is equally
helpful and necessary in all of my linux machines(I don't have darwin yet).

### hosts

Device folders follow this structure:

- `configuration.nix` created by NixOS installer but without the shared content.
  However, all the device specific things are stored here, such as finger print
  and touchpad on ThinkPad, and bluetooth configurations in `rook`(PC)
- pure `hardware-configuration.nix` without any modifications, because I'm not
  advanced yet to do anything with it yet.
- `default.nix` which just exports a result of `nixosSystem` function from
  nixpkgs standart library.

Under certain circumstances, ThinkPad only at the time of writing:

- `power.nix` contains power management related configuration such as `tlp`,
  `powertop` and `power-profile-daemons` (currently disabled.)

`shared/` folder contains following files:

- `default.nix` combines all the `*.nix` files inside shared folder and contains
  shared configuration that is too short to be written in a separate file.
- `bootloader.nix` for boot loader options, I use GRUB, I wanted to customize it
  initially, but couldn't find a moment to do it yet.
- `network.nix`, as the name is self explanatory, it has very few lines, but I
  planned to extend it furthermore while learning, that's why I moved out
  network configuration beforehand.
- `spicetify.nix` contains configurations of my spotify modified with spicetify
  to have better keyboard experience.
- in `keyboard.nix`, I have placed `kanata` configuration to activate home row
  mods and replace Caps Lock with Escape because of its original long distance
  from home row.
- `kanata.kbd` is the actual keyboard configurations used by `kanata`

### home-manager

Second folder by importance is `home-manager` which is as the name suggests, the
folder of my home-manager configurations. Surprisingly, my HM folder is so
simple and small. It only has 3 files:

- `shared.nix`, the name may suggest that shared configs should be a lot, but it
  only contains single `imports` array. It imports everything from `modules` all
  of which is shared configuration explained below.

The other two files are `pc-home.nix` and `pad-home.nix` which contains single
`./shared.nix` import, and single username and user path declaration. I tend to
have a single user per device, so I can keep my HM config as simple as possible.

### modules

My `modules` folder have application configurations, and the file names are self
explanatory except `additions.nix`:

```bash
✦ ❯ ee modules/
 modules
├──  additions.nix
├──  alacritty.nix
├──  astronvim.nix
├──  chromium.nix
├──  firefox.nix
├──  fish.nix
├──  ghostty.nix
├──  git.nix
├──  kitty.nix
├──  lazygit.nix
├──  litexl.nix
├──  spotify.nix
├──  starship.nix
├──  vscode.nix
├──  wezterm.nix
├──  zellij.nix
└──  zsh.nix
```

- `additions.nix` contains configuration of apps that I don't bother to modify a
  lot and are too simple to configure anyways, such as `direnv`, `btop` and
  `zoxide`.
