{
  description = "A very basic flake";

  inputs = {
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
      nvim = nixvim'.makeNixvimWithModule {
        inherit pkgs;
        module = config;
        extraSpecialArgs = {
          
        };
      };
    in {
      packages = {
        #inherit nvim;
        default = nvim;
      };
      checks = {
        default = nixvimLib.check.mkTestDerivationFromNvim {
          inherit nvim;
          name = "a nixvim configuration";
        };
      };
         
    };
    flake.nixosModules = 
      let
        inherit (nixpkgs) lib;
      in {
        default = config;
      };
    };
}


