return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",  
    },
    keys = {
      {'<C-n>', ':Neotree filesystem reveal left<CR>',},
    },
  },
  { 
    "nvim-tree/nvim-web-devicons"
  },
}
