local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {
  {
    "hrsh7th/nvim-cmp",
    opts = overrides.cmp,
  },
  {
    "nvim-tree/nvim-tree.lua",
    override_options = overrides.nvimtree,
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
  },
  {
    "williamboman/nvim-lsp-installer",
    event = "BufRead",
    config = function()
      local lsp_installer = require("nvim-lsp-installer")

      lsp_installer.on_server_ready(function(server)
        local opts = {}
        server:setup(opts)
        vim.cmd([[ do User LspAttachBuffers ]])
      end)
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "custom.configs.lspconfig"
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    after = "nvim-lspconfig",
    config = function()
      require "custom.configs.null-ls"
    end,
  },
  {
    "stevearc/resession.nvim",
    opts = {},
  },
  {
    "SmiteshP/nvim-navic",
    lazy = true,
    opts = function()
      return {
        separator = " ",
        highlight = true,
        depth_limit = 5,
      }
    end,
  },
}

return plugins

