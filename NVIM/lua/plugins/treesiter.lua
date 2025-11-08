return {
  "nvim-treesitter/nvim-treesitter", 
  branch = 'master', 
  lazy = false, 
  build = ":TSUpdate",
  opts = {
    ensure_installed = {"html", "javascript", "lua", "python"},
    -- change to
    -- auto_install = true,
    highlight = {enable = true },
    indent = {enable = true},
  }
}
