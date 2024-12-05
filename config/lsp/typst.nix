{...}: 
{
  plugins.typst-vim = {
    enable = true;
    settings = {
      auto_close_toc = true;
      cmd = "typst";
      conceal_math = true;
      pdf_viewer = "zathura"; 
    };
  };
  plugins.lsp.servers.typst_lsp = {
    enable = true;
    settings =  {
      exportPdf = "onType";
    };
  };
}
