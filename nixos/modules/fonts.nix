{ pkgs, ... }:

{
  fonts.packages = with pkgs; [
    font-awesome
    jetbrains-mono
    fira-code-nerdfont
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    noto-fonts-emoji
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ];

}
