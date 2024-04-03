{ config, pkgs, ... }:

{
  users.users.left = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = [ "wheel" "audio" "qemu" "kvm" "libvirtd" "networkmanager" "docker" ];
  };

  security.sudo.extraRules = [
    {
      users = [ "left" ];
      commands = [
        {
          command = "ALL";
          options = [ "NOPASSWD" ]; # "SETENV" # Adding the following could be a good idea
        }
      ];
    }
  ];
}
