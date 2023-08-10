return {
  "williamboman/mason.nvim",
  lazy = false,
  opts = {
    ensure_installed = {
      "ansible-language-server",
      "ansible-lint",
      "bash-language-server",
      "json-lsp",
      "lua-language-server",
      "markdownlint",
      "pylint",
      "pyright",
      "rubocop",
      "shellcheck",
      "yaml-language-server",
    },
  },
}
