{ config, lib, pkgs, ... }:

{
  imports = [ ./hardware-configuration.nix ./modules ];

  system = {
    stateVersion = "23.11";

    # Auto system update
    autoUpgrade.enable = true;
  };
}