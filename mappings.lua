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
    ["<leader>rf"] = {
      function()
       require('telescope').extensions.recent_files.pick()
      end,
      "Telescope recent files"},
    ["<leader>rr"] = {
      function()
       require('telescope.builtin').registers()
      end,
      "Telescope recent files"},
  }
}

return M
