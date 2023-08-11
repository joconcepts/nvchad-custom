return {
  "hrsh7th/nvim-cmp",
  event = "BufEnter",
  opts = {
    preselect = require("cmp").PreselectMode.None,
    completion = {
      completeopt = "menu,preview,menuone,noselect",
    },
    mapping = {
      ['<CR>'] = require("cmp").mapping.confirm({ select = false }),
    }
  }
}
