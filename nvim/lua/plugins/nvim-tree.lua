return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      hijack_netrw = true,
      hijack_cursor = true,
      update_focused_file = {
        enable      = true,
        update_root = {
          enable = false,
          ignore_list = {}
        },
      },
      sync_root_with_cwd = true,
      view = {
        width = 30,
        side = "left",
      },
      filters = {
        dotfiles = false,
      },
    }
    
    -- Keymaps
    vim.keymap.set('n', '<leader>t', '<cmd>NvimTreeToggle<cr>', { desc = "Toggle NvimTree" })
    vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeFocus<cr>', { desc = "Focus NvimTree" })
  end,
}
