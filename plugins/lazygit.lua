  return {
    "kdheepak/lazygit.nvim",
    lazy = false,
    dependencies =  {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim"
    },
    config = function()
      require("telescope").load_extension("lazygit")
    end,
  }

