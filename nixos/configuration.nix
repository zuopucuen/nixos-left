{ config, lib, pkgs, ... }:

{
  imports = [ /etc/nixos/hardware-configuration.nix ./modules ];

  system = {
    stateVersion = "24.11";

    # Auto system update
    autoUpgrade.enable = true;
  };
}
