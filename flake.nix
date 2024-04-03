{
  description = "gpskwlkr NixOS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    nixpkgs-unstable.url = "nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/release-23.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nur.url = "github:nix-community/NUR";

    #firefox-addons = {
    #  url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
    #  inputs.nixpkgs.follows = "nixpkgs";
    #};

  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, nur, ... }@inputs:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};
    in
    {
      nixosConfigurations.nixos = lib.nixosSystem {
        inherit system;
        modules = [ ./nixos/configuration.nix ];
        specialArgs = { inherit pkgs-unstable; };
      };

      homeConfigurations = {
        left = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [
            ./home
            { nixpkgs.overlays = [ nur.overlay ]; }
            nur.hmModules.nur
          ];
          extraSpecialArgs = {
            inherit pkgs-unstable;
            inherit inputs;
          };
        };
      };
    };
}
