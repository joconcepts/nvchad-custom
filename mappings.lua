local M = {}

-- Your custom mappings
M.abc = {
  n = {
    ["<leader>gg"] = {":LazyGit <CR>", "LazyGit"},
    ["<leader>yc"] = {":Telescope yaml_schema <CR>", "YAML companion"},
  }
}

return M
