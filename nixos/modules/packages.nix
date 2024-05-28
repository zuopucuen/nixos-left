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

    #game  lib for 0.ad
    #zeroad
    #debootstrap # Tool to create a Debian system in a chroot:wq
    #libgcc # a C ++ 17 conforming compiler
    #libllvm # LLVM-objdump, which is part of the LLVM binaries. You don't need clang itself.
    #rustc # the rust compiler and cargo (NB: A27 needs rust 1.51.0 and later won't work without)
    #boost # Boost (at least 1.57 since r21726)
    #cargo
    #cmake # CMake (only needed if you use bundled NVTT)
    #gnumake
    #gnum4
    #pkg-config
    #libgnurl # at least 7.32
    #enet # 1.3, the older 1.2 is not compatible
    #coreutils-full # libfmt (at least 4.0)
    #gloox # needed for the lobby; at least 1.0.10, previous versions are know to have connection problems; pass --without-lobby to update-workspaces.sh to exclude the lobby
    #icu
    #libogg
    #libpng
    #libsodium # >= 1.0.14
    #libvorbis
    #libxml2
    #miniupnpc # at least 1.6
    #openal
    #SDL2 # at least 2.0 0.2
    #zlib
    #wxGTK32 # at least 3.0 packages are probably called wxgtk
  ];
}
