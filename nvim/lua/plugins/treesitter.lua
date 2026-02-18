return {
  "nvim-treesitter/nvim-treesitter",
  version = false,
  build = ":TSUpdate",
  event = { "BufReadPost", "BufWritePost", "BufNewFile" },
  -- On this version of nvim-treesitter, it seems it is config (singular)
  main = "nvim-treesitter",
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = {
      "lua",
      "vim",
      "vimdoc",
      "query",
      "python",
      "cpp",
      "bash",
      "rust",
      "markdown",
      "markdown_inline",
    },
    auto_install = true,
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-space>",
        node_incremental = "<C-space>",
        scope_incremental = false,
        node_decremental = "<bs>",
      },
    },
  },
}
