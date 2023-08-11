return {
  'nvim-telescope/telescope.nvim',
  opts = {
    pickers = {
      buffers = {
        show_all_buffers = true,
        sort_lastused = true,
        theme = "dropdown",
        previewer = false,
        mappings = {
          i = {
            ["<c-d>"] = "delete_buffer",
          }
        }
      }
    }
  }
}
