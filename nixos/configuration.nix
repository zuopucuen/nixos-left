{ config, lib, pkgs, ... }:

{
  imports = [ ./hardware-configuration.nix ./modules ];

  system = {
    stateVersion = "24.05";

    # Auto system update
    autoUpgrade.enable = true;
  };
}
