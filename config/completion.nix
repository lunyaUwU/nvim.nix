{...}: 
{
  plugins = {
    
    cmp-nvim-lsp.enable = true;
    cmp-path.enable = true;
    cmp-git.enable = true;
    cmp-buffer.enable= true;
    cmp-calc.enable = true;
    cmp-cmdline.enable = true;
    cmp_luasnip.enable = true;  
    
    luasnip.enable = true;
    nvim-cmp.enable = true;
    
    rust-tools.enable = true;
    
    lsp = {
      enable = true;
      servers = {
        nixd.enable = true;
        rust-analyzer.enable = true;
        rust-analyzer.installCargo = true;
        rust-analyzer.installRustc = true;
        gopls.enable = true;
        
      };
    };
  };

}

