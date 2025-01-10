{
  plugins = {
    lsp = {
      enable = true;

      servers = {
        #ltex.enable = true;
        nixd.enable = true;
        cmake.enable = true;
        clangd.enable = true;
        #ols.enable = true;
        #texlab.enable = true;
        pylsp.enable = true;
        ccls.enable = true;
        asm_lsp.enable = true;
        rust_analyzer =  {
          enable = true;
          installCargo = false;
          installRustc = false;

        };
      };

    };
  };
}
