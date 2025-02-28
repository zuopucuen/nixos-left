{ config, pkgs, ... }:

{
  networking = {
    hostName = "nixos-left";
    networkmanager.enable = true;
    enableIPv6 = true;
    firewall.enable = false;
  };
}
