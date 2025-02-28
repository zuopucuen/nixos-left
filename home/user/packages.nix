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
    pkgs.nixfmt-classic

    # Working
    pkgs.feishu
    pkgs.pkgs.wechat-uos
    pkgs.nur.repos.linyinfeng.wemeet
    pkgs.libreoffice-qt
  ];
}
