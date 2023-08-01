local M = {}

-- Your custom mappings
M.abc = {
  n = {
     ["<leader>bd"] = {":Bdelete <CR>", "Buffer delete"},
  }
}

return M
