{ config, pkgs, ... }:

{
  programs = {

    gnupg = {
      agent = {
        enable = true;
        enableSSHSupport = true;
      };
    };

    zsh.enable = true;
    mtr.enable = true;

    kdeconnect.enable = true;
    steam.enable = true;
    firefox.enable = true;
  };
}
