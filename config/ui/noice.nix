{
  plugins.noice = {
    enable = true;
    settings = {
     routes = [
        {
          filter = {
            event = "msg_show";
            kind = "shell_out";
          };
          view = "notify";
          opts = {
            enter = true;
          };
        }
        {
          filter = {
            event = "msg_show";
            kind = "shell_err";
          };
          view = "notify";
          opts = {
            enter = true;
          };
        }
      ];
      notify = {
        enabled = true;
        view = "notify";
      };
      messages = {
        enabled = true; # Adds a padding-bottom to neovim statusline when set to false for some reason
      };
      lsp = {
        message = {
          enabled = true;
        };
        progress = {
          enabled = false;
          view = "mini";
        };
      };
      cmdline.enabled = true;
      popupmenu = {
        enabled = true;
        backend = "nui";
      };
      format = {
        filter = {
          title = "Shell";
        };
        replace = {
          pattern = [":%s*%%s*s:%w*:%s*" ":%s*%%s*s!%w*!%s*" ":%s*%%s*s/%w*/%s*" "%s*s:%w*:%s*" ":%s*s!%w*!%s*" ":%s*s/%w*/%s*"];
          icon = "󱞪";
          lang = "regex";
        };
      };
    };
  };
}
