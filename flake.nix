{
  description = "A very basic flake";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };  
  };
  outputs = {
    self,
    nixvim,
    nixpkgs,
    flake-parts,
  } @ inputs:
  let 
    config = import ./config;
    
  in    
  flake-parts.lib.mkFlake {inherit inputs;} {
    systems = [
      "aarch64-darwin"
      "aarch64-linux"
      "x86_64-darwin"
      "x86_64-linux"
    ];
    
    perSystem = {
      pkgs,
      system,
      ...
    }: let
      nixvim' = nixvim.legacyPackages.${system};
      nixvimLib = nixvim.lib.${system};
      nixvimModule = {
        inherit pkgs;
        module = config;
        extraSpecialArgs = {
          
        };
      };

      nixvim = nixvim'.makeNixvimWithModule nixvimModule; 
      in {
      packages = {
        #inherit nvim;
        default = nixvim;
      };
      checks = {
        default = nixvimLib.check.mkTestDerivationFromNvim {
          inherit nixvim;
          name = "a nixvim configuration";
        };
      };
         
    };
    flake = {
         nixvimModules.default = ./config;
      };
    };
}


