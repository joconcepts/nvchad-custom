return {
  "neovim/nvim-lspconfig",
  config = function()
    local on_attach = require("plugins.configs.lspconfig").on_attach
    local capabilities = require("plugins.configs.lspconfig").capabilities

    local lspconfig = require "lspconfig"

    local servers = {
      "html", "cssls", "gopls",
      "pyright", "yamlls", "dockerls",
      "terraformls", "vimls", "ansiblels"
    }

    for _, lsp in ipairs(servers) do
      local config = {
        on_attach = on_attach,
        capabilities = capabilities,
      }

      lspconfig[lsp].setup(config)
    end

    local cfg = require("yaml-companion").setup({
      -- Add any options here, or leave empty to use the default settings
      -- lspconfig = {
      --   cmd = {"yaml-language-server"}
      -- },
    })
    lspconfig.yamlls.setup(cfg)

    lspconfig.ansiblels.setup {
      settings = {
        ansible = {
          ansible = {
            useFullyQualifiedCollectionNames = true
          },
          validation = {
            lint = {
              enabled = false,
            }
          },
          completion = {
              provideRedirectModules = true,
              provideModuleOptionAliases = true
          }
        }
      }
    }
  end,
}
