{...}:
{
  #globals.mapleader = "<Space>";
  plugins.which-key.triggers = [ "<leader>" "g" ];
  plugins.which-key.registrations = {
    "<leader>t" = [ "<cmd>Neotree toggle<cr>" "toggle Neotree" ];
    "<c-Tab>" = ["<cmd>BufferLast<cr>" "previous Tab"];
    "<leader>w" = [ "<cmd>w!<cr>" "Write current buffer" ];
    "<leader>wq" = [ "<cmd>wq<cr>" "Write current buffer and quit" ];
    "<leader>wqq" = [ "<cmd>wq<cr>" "Write & quit forced" ];
    "<c-h>" = [ "<c-w>h" "Move top" ];
    "<c-j>" = [ "<c-w>j" "Move down" ];
    "<c-k>" = [ "<c-w>k" "Move left" ];
    "<c-l>" = [ "<c-w>l" "Move right" ];
    "<Tab>" = ["<cmd>BufferNext<CR>" "next tab"];
    "<S-Tab>" = ["<cmd>BufferPrevious<CR>" "previous tab"];
    "<leader><Tab>mn" = ["<cmd>BufferMoveNext<CR>" "next tab"];
    "<leader><Tab>mp" = ["<cmd>BufferMovePrevious<CR>" "previous tab"];
    "<leader><Tab>q" = ["<cmd>BufferClose<CR>" "closes this tab"];
    "<leader><Tab>r" = ["<cmd>BufferRestore<CR>" "restores previously closed tab"];
    "<leader><Tab>p" = ["<cmd>BufferRestore<CR>" "pins this tab"];  
    "<leader>e"=["<cmd>Explore<CR>" "Opens an explorer"];
  };
}
