return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    git = {
      enable = true,
    },
    renderer = {
      highlight_git = true,
      icons = {
        show = {
          git = true,
        },
      },
    },
    auto_close = true,
    filters = {
      custom = { ".git" }
    },
  },
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
}
