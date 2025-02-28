{ pkgs, ... }:

{
  virtualisation = {
    spiceUSBRedirection.enable = true;

    libvirtd = {
      enable = true;

      qemu = {
        swtpm.enable = true;
        ovmf.enable = true;
        ovmf.packages = [ pkgs.OVMFFull.fd ];
      };
    };

    podman = {
      enable = true;

      dockerCompat = true;
      defaultNetwork.settings.dns_enabled = true;
    };

    lxc = {
      enable = true;
      lxcfs.enable = true;
      unprivilegedContainers = true;
      defaultConfig = "";
    };
  };

  environment.systemPackages = with pkgs; [
    podman-compose
    qemu
    spice
    spice-gtk
    spice-protocol
    virt-manager
    virt-viewer
    win-spice
    win-virtio
    lxc
  ];
}
