local cmp = require "cmp"
local M = {}

M.cmp = {
  preselect = cmp.PreselectMode.None,
  completion = {
    completeopt = "menu,menuone",
    completeopt = "menu,preview,menuone,noselect",
  },
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
  }
}

M.nvimtree = {
  git = {
    enable = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
  auto_close = true,
}

return M
