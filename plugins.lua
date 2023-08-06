local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {
  {
    "hrsh7th/nvim-cmp",
    opts = overrides.cmp,
  },
  {
    "nvim-tree/nvim-tree.lua",
    override_options = overrides.nvimtree,
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "custom.configs.lspconfig"
    end,
  },
  -- icons
  { "nvim-tree/nvim-web-devicons", lazy = true },
  -- ui components
  { "MunifTanjim/nui.nvim", lazy = true },
}

return plugins

