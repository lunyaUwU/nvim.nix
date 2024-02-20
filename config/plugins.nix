{pkgs, ...}:
{
  plugins = {
      lsp.enable = true;
      neo-tree.enable = true;
      telescope.enable = true;
      which-key.enable = true;
      treesitter = {
        enable = true;
        ensureInstalled = ["nix"];
    
        #folding = true;
      };
  
  };
}
