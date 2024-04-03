{ config, pkgs, ... }:

{
  networking = {
    hostName = "nixos-left";
    networkmanager.enable = true;
    interfaces.wlp6s0.mtu = 1400;
    enableIPv6 = false;
    firewall.enable = false;
  };
}
