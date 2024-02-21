{...}:
{
  #globals.mapleader = "<Space>";
  plugins.which-key.triggers = [ "<leader>" "g" ];
  plugins.which-key.registrations = {
    "<leader>t" = [ "<cmd>Neotree toggle<cr>" "toggle Neotree" ];
    "<leader>-<Tab>" = ["<cmd>tabr<cr>" "previous Tab"];
    "<leader>w" = [ "<cmd>w!<cr>" "Write current buffer" ];
    "<leader>wq" = [ "<cmd>wq<cr>" "Write current buffer and quit" ];
    "<leader>wqq" = [ "<cmd>wq<cr>" "Write & quit forced" ];
    "<c-h>" = [ "<c-w>h" "Move top" ];
    "<c-j>" = [ "<c-w>j" "Move down" ];
    "<c-k>" = [ "<c-w>k" "Move left" ];
    "<c-l>" = [ "<c-w>l" "Move right" ];
    "<Tab>" = ["<cmd>tabN<CR>" "next tab"];
    "<S-Tab>" = ["<cmd>tabp<CR>" "previous tab"];
  };
}
