local overrides = require "custom.configs.overrides"

return {
  "nvim-tree/nvim-tree.lua",
  override_options = overrides.nvimtree,
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
}
