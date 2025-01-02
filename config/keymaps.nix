{...}:
{
  #globals.mapleader = "<Space>";
  #plugins.which-key.settings.triggers = [ "<leader>" "g" ];
  plugins.which-key.settings.triggers = [ 
    {__unkeyed-1 = "<leader>"; mode = "nxsot";} 
  ];
  plugins.which-key.settings.spec = [
   {__unkeyed-1="<leader>t"; __unkeyed-2="<cmd>Neotree toggle<cr>"; desc="toggle Neotree";}
   {__unkeyed-1="<c-Tab>"; __unkeyed-2 = "<cmd>BufferLast<cr>";  desc="previous Tab"; group="tab";}
   {__unkeyed-1="<leader>w"; __unkeyed-2="<cmd>w!<cr>"; desc ="Write current buffer"; group="file"; nowait= true;}
   {__unkeyed-1="<leader>wq";__unkeyed-2= "<cmd>wq<cr>"; desc ="Write current buffer and quit"; group="file"; }
   {__unkeyed-1="<leader>wqq";__unkeyed-2 ="<cmd>wq<cr>"; desc ="Write & quit forced"; group="file";}
   {__unkeyed-1="<c-h>"; __unkeyed-2 = "<c-w>h"; desc="Move top"; }
   {__unkeyed-1="<c-j>"; __unkeyed-2="<c-w>j"; desc="Move down";  }
   {__unkeyed-1="<c-k>"; __unkeyed-2="<c-w>k"; desc="Move left"; }
   {__unkeyed-1="<c-l>"; __unkeyed-2= "<c-w>l"; desc="Move right";}
   {__unkeyed-1="<Tab>"; __unkeyed-2="<cmd>BufferNext<CR>"; des="next tab";}
   {__unkeyed-1="<S-Tab>";  __unkeyed-2="<cmd>BufferPrevious<CR>"; desc="previous tab";}
   {__unkeyed-1="<leader><Tab>mn"; __unkeyed-2="<cmd>BufferMoveNext<CR>"; desc="move tab right";}
   {__unkeyed-1="<leader><Tab>mp";__unkeyed-2="<cmd>BufferMovePrevious<CR>"; desc="previous tab";}
   {__unkeyed-1="<leader><Tab>q"; __unkeyed-2="<cmd>BufferClose<CR>"; desc="closes this tab";}
   {__unkeyed-1="<leader><Tab>r"; __unkeyed-2="<cmd>BufferRestore<CR>"; desc="restores previously closed tab";}
   {__unkeyed-1="<leader><Tab>p"; __unkeyed-2="<cmd>BufferRestore<CR>"; desc="pins this tab";}  
   {__unkeyed-1="<leader>e"; __unkeyed-2="<cmd>Explore<CR>"; desc="Opens an explorer";}
   {__unkeyed-1="<leader>l"; group="lsp";}
   ];
}
