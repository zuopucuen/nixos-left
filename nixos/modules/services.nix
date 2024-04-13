{ config, pkgs, ... }:

{
  services = {
    dbus.enable = true;
    desktopManager.plasma6.enable = true;
    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };
    xserver = {
      enable = true;
      #dpi = 192;
      #upscaleDefaultCursor = true;
    };
  };

  xdg.portal.wlr.enable = true;
}
