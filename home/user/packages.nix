{ pkgs, pkgs-unstable, nur, ... }:

{
  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);

      permittedInsecurePackages = [
        "electron-25.9.0" # Obsidian
        "openssl-1.1.1w"
      ];
    };
  };

  home.packages = [

    # Dev stuff
    pkgs.gcc
    #pkgs.go
    pkgs.lua
    (pkgs.python3.withPackages
      (python-pkgs: [ python-pkgs.pip python-pkgs.requests ]))
    pkgs.nixfmt

    # Working
    #pkgs.google-chrome
    pkgs.feishu
    pkgs.nur.repos.wenjinnn.wechat-universal
    pkgs.nur.repos.linyinfeng.wemeet
    #pkgs.nur.repos.rewine.electron-netease-cloud-music
    pkgs.libreoffice-qt
  ];
}
