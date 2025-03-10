{ config, pkgs, lib, ... }:

{
  documentation.nixos.enable = false;

  nixpkgs.config.allowUnfree = true;

  nix = {
    settings = {
      warn-dirty = false;
      experimental-features = [ "nix-command" "flakes" ];
      auto-optimise-store = true;
      substituters = lib.mkForce [
        "https://mirrors.ustc.edu.cn/nix-channels/store"
      ];
    };

    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 30d";
    };
  };
}
