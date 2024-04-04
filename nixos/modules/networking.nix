{ config, pkgs, ... }:

{
  networking = {
    hostName = "nixos-left";
    networkmanager.enable = true;
    interfaces.wlp0s20f3.mtu = 1400;
    enableIPv6 = false;
    firewall.enable = false;
  };
}
