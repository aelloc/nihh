{
  inputs,
  pkgs,
  ...
}: {
  programs.zen-browser = {
    enable = true;

    profiles.aelloc = {
      id = 0;
      name = "Default";
      settings = {
        "extensions.autoDisableScopes" = 0;
      };
      extensions = {
        force = true;

        packages = with inputs.firefox-addons.packages.${pkgs.stdenv.hostPlatform.system}; [
          ublock-origin
          darkreader
          sidebery
          vimium
          # youtube-recommended-videos
        ];

        settings = {
          "uBlock0@raymondhill.net".settings = {
            selectedFilterLists = [
              "ublock-filters"
              "ublock-badware"
              "ublock-privacy"
              "ublock-unbreak"
              "ublock-quick-fixes"
            ];
          };
        };
      };
    };
  };
}
