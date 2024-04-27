{...}: 
{
  plugins = {
    
  luasnip.enable = true;
  coq-nvim = {
    enable = true;
    autoStart = true;
    installArtifacts = true;
  };
    lsp = {
      enable = true;
      servers = {
        nixd.enable = true;
       
      };
    };
    cmp = {
      enable = true;
      settings.snippet.expand = ''
      function(args)
        require('luasnip').lsp_expand(args.body)
      end
      '';


      };
    };  
    };

}

