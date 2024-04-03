let configDir = ../config;
in {
  home.file = {
    ".vim".source = "${configDir}/vim";
    ".vimrc".source = "${configDir}/vim/vimrc";
    ".config/wallpapers".source = "${configDir}/wallpapers";
    ".config/neofetch".source = "${configDir}/neofetch";
}
