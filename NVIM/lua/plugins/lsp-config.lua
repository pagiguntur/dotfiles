return {
  { 
    "mason-org/mason.nvim", 
    lazy = false,
    opts = {},
  }, 
  {
    "mason-org/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      ensure_installed = { "lua_ls", "ts_ls"},
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    -- opts = {
      -- servers = {
        -- tsserver = {},
      -- },
      -- setup = {}
    -- },
    config = function()
      -- deprecrete
      -- local lspconfig = require("lspconfig")
      -- lspconfig.lua_ls.setup({})
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      vim.lsp.config('lua_ls', {capabilities = capabilites})
      vim.lsp.config('ts_ls',{ capabilities = capabilities })
      -- vim.lsp.enable('lua_ls')
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    end
  },
}
