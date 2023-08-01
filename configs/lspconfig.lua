local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  "html", "cssls", "gopls",
  "pyright", "yamlls", "dockerls",
  "terraformls", "vimls",
}

for _, lsp in ipairs(servers) do
  local config = {
    on_attach = on_attach,
    capabilities = capabilities,
  }

  lspconfig[lsp].setup(config)
end

lspconfig["yamlls"].setup {
  settings = {
    yaml = {
      schemas = {
        kubernetes = "*.{yaml,yml}"
      }
    }
  }
}
