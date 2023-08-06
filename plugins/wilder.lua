  return {
    "jose-elias-alvarez/null-ls.nvim",
    after = "nvim-lspconfig",
    config = function()
      require "custom.configs.null-ls"
    end,
  }
