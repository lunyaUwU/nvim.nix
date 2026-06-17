{config,pkgs, ...}:
{
  plugins = {
      lsp.enable = true;
      neo-tree.enable = true;
      telescope.enable = true;
      which-key.enable = true;
      treesitter = {
        enable = true;
        #settings.ensure_installed = ["nix"];
                #folding = true;
       #grammarPackages = with config.plugins.treesitter.package.builtGrammars; [
       #  bash
       #  json
       #  lua
       #  make
       #  markdown
       #  nix
       #  regex
       #  toml
       #  vim
       #  vimdoc
       #  xml
       #  yaml
       #  rust 
       #  pkgs.vimPlugins.nvim-treesitter-parsers.nix
       #];
    };
      floaterm.enable = true;
#     lex-extra = {
#      enable = true;
#     }

  };
}
