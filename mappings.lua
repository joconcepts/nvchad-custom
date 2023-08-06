local M = {}

-- Your custom mappings
M.abc = {
  n = {
    ["<leader>gg"] = {":LazyGit <CR>", "LazyGit"},
    ["<leader>yc"] = {":Telescope yaml_schema <CR>", "YAML companion"},
    ["<leader>k9s"] = {
      function ()
        require("nvterm.terminal").send("k9s", "float")
      end
    },
    ["<Leader>rf"] = {"<cmd>lua require('telescope').extensions.recent_files.pick()<CR>", "Telescope recent files"},
  }
}

return M
