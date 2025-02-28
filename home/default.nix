{ config, pkgs, pkgs-unstable, lib, inputs, ... }:

{
  imports = [ ./user ];

  home.username = "left";
  home.homeDirectory = "/home/left";
  home.stateVersion = "24.11";
}

