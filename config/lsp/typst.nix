{...}: 
{
  plugins.typst-vim = {
    enable = true;
    settings = {
      auto_close_toc = 1;
      cmd = "typst";
      conceal_math = 1;
      pdf_viewer = "zathura"; 
    };
  };
  plugins.lsp.servers.tinymist = {
    enable = true;
  };
}
