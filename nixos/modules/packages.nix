{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [

    # libs
    libva

    # drivers
    intel-vaapi-driver
    intel-media-driver

    # utils
    file
    which
    tree
    bat
    fzf
    neofetch
    tldr
    parted
    pciutils
    usbutils
    pstree
    stress
    ethtool
    xdg-user-dirs
    jq
    vim
    libva-utils
    inteltool
    kitty
    kitty-themes
    android-tools
    partition-manager

    # utils-network
    tcpdump
    dig
    mtr
    iperf3
    socat
    nmap

    # utils-web
    curl
    wget

    # utils-system-monitor
    lm_sensors
    btop
    htop
    iotop
    iftop
    amdgpu_top
    s-tui
    strace # system call monitoring
    ltrace # library call monitoring
    lsof # list open files
    wavemon # wifi monitor

    # utils-archives
    zip
    xz
    unzip
    p7zip

    # utils-nixos
    home-manager
    appimage-run

    # code
    git
    nixpkgs-fmt
    cmake # CMake (only needed if you use bundled NVTT)
    gnumake
    pkg-config


    # system service
    pulseaudio
    wpa_supplicant

    # kde program
    krdc

    # desktop apps
    firefox-wayland
    vlc
    mpv
    qq
  ];
}
