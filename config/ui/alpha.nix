{...}:
{
  plugins.alpha = {
    enable = true;
    layout = 
    [
      {
        type = "padding";
        val = 2;
      }
      {
        opts = {
          hl = "Type";
          position = "center";
        };
        type = "text";
        val = [
          "███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗"
          "████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║"
          "██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║"
          "██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║"
          "██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║"
          "╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"
        ];
      }
      {
        type = "padding";
        val = 2;
      }
      {
        type = "group";
        val = [
          {
            on_press = {
              __raw = "function() vim.cmd[[ene]] end";
            };
            opts = {
              position = "center";
            };
            type = "button";
            val = " New file   ";
            position = "center";
          } 
          {
            on_press = {
              __raw = "function() vim.cmd[[Explore]] end";
            };
            opts = {
              position = "center";
            };
            type = "button";
            val = "  Explorer   ";
            position = "center";
          }
          {
            on_press = {
              __raw = "function() vim.cmd[[qa]] end";
            };
            opts = {
              position = "center";
            };
            type = "button";
            val = " Quit Neovim";
            position = "center";
          }

        ];
      }
      {
        type = "padding";
        val = 10;
      }
      {
        opts = {
          hl = "Keyword";
          position = "center";
        };
        type = "text";
        val = "Inspiring quote here.";
      }
    ];
  };
}
