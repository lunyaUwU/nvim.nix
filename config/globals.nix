{...}:
let
  indent = 2;
in
{
  config.globals.mapleader = " ";
  config.luaLoader.enable = true;
  config.opts = {
    number = true;
    relativenumber = true;
    #mouse = "";
    encoding = "utf8";
    termguicolors = true;
    backspace = [ "indent" "eol" "start" ];
    cursorline = false;
    wrap = false;
    #background = "dark";
    tabstop = indent;
    shiftwidth = indent;
    smarttab = true;
    expandtab = true;
    laststatus = 2;
    compatible = false;
    foldexpr = "nvim_treesitter#foldexpr()";
    foldmethod = "expr";
  };
  config.clipboard = {
    register = "unnamedplus";
  };
}
