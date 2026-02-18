return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPost", "BufWritePost", "BufNewFile" },
  dependencies = {
    "saghen/blink.cmp",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    "nvim-telescope/telescope.nvim",
    { "antosha417/nvim-lsp-file-operations", config = true },
    { "folke/lazydev.nvim",                  opts = {} },
  },
  config = function()
    -- Standard LSP signs
    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    -- Diagnostics config
    vim.diagnostic.config({
      underline = true,
      update_in_insert = false,
      virtual_text = { spacing = 4, prefix = "●" },
      severity_sort = true,
    })

    -- Keybindings on LspAttach
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        local keymap = vim.keymap
        local bopts = { buffer = ev.buf, silent = true }

        bopts.desc = "Show LSP references"
        keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", bopts)
        bopts.desc = "Go to declaration"
        keymap.set("n", "gD", vim.lsp.buf.declaration, bopts)
        bopts.desc = "Show LSP definitions"
        keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", bopts)
        bopts.desc = "Show LSP implementations"
        keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", bopts)
        bopts.desc = "Show LSP type definitions"
        keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", bopts)
        bopts.desc = "See available code actions"
        keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, bopts)
        bopts.desc = "Smart rename"
        keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bopts)
        bopts.desc = "Show buffer diagnostics"
        keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", bopts)
        bopts.desc = "Show line diagnostics"
        keymap.set("n", "<leader>d", vim.diagnostic.open_float, bopts)
        bopts.desc = "Go to previous diagnostic"
        keymap.set("n", "[d", vim.diagnostic.goto_prev, bopts)
        bopts.desc = "Go to next diagnostic"
        keymap.set("n", "]d", vim.diagnostic.goto_next, bopts)
        bopts.desc = "Show documentation for what is under cursor"
        keymap.set("n", "K", vim.lsp.buf.hover, bopts)
        bopts.desc = "Restart LSP"
        keymap.set("n", "<leader>rs", ":LspRestart<CR>", bopts)

        -- Inlay hints
        if vim.lsp.inlay_hint then
          vim.lsp.inlay_hint.enable(true, { bufnr = ev.buf })
        end
      end,
    })

    local lspconfig = require("lspconfig")
    local capabilities = require('blink.cmp').get_lsp_capabilities()

    -- Mason setup
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = { "clangd", "basedpyright", "lua_ls", "rust_analyzer" },
      handlers = {
        function(server_name)
          local server_opts = {
            capabilities = capabilities,
          }

          -- Custom server settings
          if server_name == "lua_ls" then
            server_opts.settings = {
              Lua = {
                workspace = { checkThirdParty = false },
                telemetry = { enable = false },
              }
            }
          end

          lspconfig[server_name].setup(server_opts)
        end,
      }
    })

    require("mason-tool-installer").setup({
      ensure_installed = { "black", "pylint", "vale", "stylua" },
    })
  end,
}
