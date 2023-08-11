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
  },
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
}
