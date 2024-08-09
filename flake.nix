{
  description = "A very basic flake";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
      #inputs.nixpkgs.follows = "nixpkgs"; 
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    neorg =  {
      url = "github:nvim-neorg/nixpkgs-neorg-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = {
    self,
    nixvim,
    nixpkgs,
    flake-parts,
    neorg,
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
      neorg,
      ...
    }: let
      nixvim' = nixvim.legacyPackages.${system};
      nixvimLib = nixvim.lib.${system};
      nixvimModule = {
        inherit pkgs;
        module = config;
        extraSpecialArgs = {
          nixpkgs.overlays = [ neorg.overlays.default ]; 
        };
      };

      nvim = nixvim'.makeNixvimWithModule nixvimModule; 
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
    flake = {
         nixvimModules.default = ./config;
      };
    };
}


