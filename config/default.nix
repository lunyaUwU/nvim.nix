{...}:

{
  plugins.web-devicons.enable = true; 
  imports = [
    ./globals.nix
    ./ui
    ./keymaps.nix
    ./plugins.nix
    ./lsp
    #./completion.nix
  ];
}
