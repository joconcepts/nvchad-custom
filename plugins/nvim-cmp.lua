local overrides = require "custom.configs.overrides"

return {
  "hrsh7th/nvim-cmp",
  event = "BufEnter",
  opts = overrides.cmp,
}
