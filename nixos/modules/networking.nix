{ config, pkgs, ... }:

{
  networking = {
    hostName = "nixos-left";
    networkmanager.enable = true;
    enableIPv6 = false;
    firewall.enable = false;
  };
}
