{...}:
{
  colorschemes.catppuccin = { 
      enable = true;
      settings = {
        flavour = "macchiato";
        term_colors = true;
        transparent_background = true;
      };
  };
  plugins.barbar = {
    enable = true;
    settings.auto_hide = false;
  };
  plugins.lualine = {
    enable = true;
    settings = {
      sections = {
        lualine_c = [
          {
            name = "filename";
            extraConfig = {
              path = 1;
            };
          }
        ];
      };
      options = {
        globalstatus = true;
        componentSeparators = {
          left = "";
          right = "";
        };
        sectionSeparators = {
          left = "";
          right = "";
        };
        
        theme = let
          colors = {
            aqua = "#8ec07c";
            black = "#282828";
            blue = "#83a598";
            darkgray = "#3c3836";
            gray = "#a89984";
            green = "#b8bb26";
            inactivegray = "#7c6f64";
            lightgray = "#504945";
            red = "#fb4934";
            transparent = "none";
            white = "#ebdbb2";
            yellow = "#fe8019";
          };
        in {
          normal = {
            a = {
              bg = colors.transparent;
              fg = colors.white;
              gui = "bold";
            };
            b = {
              bg = colors.transparent;
              fg = colors.yellow;
            };
            c = {
              bg = colors.transparent;
              fg = colors.gray;
            };
          };
        };
      };
    };
  };
  plugins.gitsigns.enable = true;
}

