{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    home-manager
    bat
    fzf
    git
    lm_sensors
    neofetch
    tldr
    unzip
    parted
    pciutils
    wget
    btop
    htop
    amdgpu_top
    s-tui
    pstree
    stress
    tcpdump
    dig
    vim
    xdg-user-dirs
    appimage-run

    #code
    nixpkgs-fmt

    #system service
    pulseaudio
    wpa_supplicant

    #kde program
    #libsForQt5.kmix
    krdc

    # desktop apps
    firefox-wayland
    vlc
    mpv
    qq
    #wechat-uos
  ];
}

