{pkgs,...}:
{
  plugins.neorg ={ 
    modules = {
      "core.dirman" = {
        config = {
          workspaces = {
            home = "~/notes/Home";
            work = "~/notes/Schule/";
          };
          default = "home";
        };
      };
      "core.defaults" = {
      };
      "core.concealer" = {
        config = {
          icon_preset = "basic";
        };
      };
      "core.completion" = {config = { engine = "nvim-cmp"; };};
    };
    enable = true;
    package = pkgs.vimPlugins.neorg;
  };
}
