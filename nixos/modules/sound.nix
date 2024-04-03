{ pkgs, ... }:

{
  sound.enable = true;

  hardware.pulseaudio = {
    enable = true;
    support32Bit = true;
  };

  #services.pipewire = {
  #  alsa.enable = true;
  #  alsa.support32Bit = true;
  #  pulse.enable = true;
  #  jack.enable = true;
  #  wireplumber.enable = true;
  #};

  #environment.systemPackages = with pkgs; [
  #  pamixer
  #  pavucontrol
  #];
}
