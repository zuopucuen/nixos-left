{ config, pkgs, ... }:
let 
  myAliases = {
	ll = "ls -l";
    docker-compose = "podman-compose";
    fullClean = '' 
        nix-collect-garbage --delete-old

        sudo nix-collect-garbage -d

        sudo /run/current-system/bin/switch-to-configuration boot
    '';
    rebuild = "sudo nixos-rebuild switch --show-trace";
    fullRebuild = "sudo nixos-rebuild switch --show-trace && home-manager switch --flake ~/nixos-left/ -b backup";
    homeRebuild = "home-manager switch --flake ~/nixos-left/ -b backup";
};
in
{
  programs = {
	zsh = {
		enable = true;
		autosuggestion.enable = true;
		syntaxHighlighting.enable = true;
		shellAliases = myAliases;
		oh-my-zsh = {
			enable = true;
			custom = "$HOME/.oh-my-custom";
			theme = "robbyrussell";
			plugins = [
				"git"
				"history"
				"wd"
			];
		};
	};
  };
}
