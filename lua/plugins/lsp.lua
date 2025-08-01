return {
  {
    "ionide/Ionide-vim",
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "eslint",
          "lua_ls",
          "svelte",
          "ts_ls",
          "hls",
          "csharp_ls",
          "lemminx",
          "elmls",
          "pylsp",
          "fsautocomplete", -- ADD FSAC to Mason's managed servers
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.eslint.setup({})
      lspconfig.svelte.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.hls.setup({})
      lspconfig.csharp_ls.setup({})
      lspconfig.lemminx.setup({})
      lspconfig.elmls.setup({})
      lspconfig.pylsp.setup({})
      lspconfig.contextive.setup({})
      vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, { desc = "LSP hover" })
      vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, { desc = "LSP definition" })
      vim.keymap.set("n", "<leader>lt", vim.lsp.buf.type_definition, { desc = "LSP type definition" })
      vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, { desc = "LSP references" })
      vim.keymap.set("n", "<leader>li", vim.lsp.buf.implementation, { desc = "LSP implementations" })
      vim.keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, { desc = "LSP code action" })
      vim.keymap.set("n", "<leader>ln", vim.lsp.buf.rename, { desc = "LSP rename" })
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "nvimtools/none-ls.nvim",
    },
    config = function() end,
  },
  {
    "nvimtools/none-ls.nvim",
    config = function()
      require("mason-null-ls").setup({
        ensure_installed = {
          "stylua",
          "csharpier",
          "xmlformatter",
          "elm-format",
          "darker",
          "prettier",
          "fantomas", -- ADD fantomas formatter
        },
      })
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.csharpier,
          null_ls.builtins.formatting.prettier,
          -- null_ls.builtins.formatting.xmlformatter, -- You can enable these back if needed
          -- null_ls.builtins.formatting.darker,      -- You can enable these back if needed
          null_ls.builtins.formatting.elm_format,
          null_ls.builtins.formatting.fantomas, -- ADD fantomas to null-ls sources
        },
      })
      vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "LSP format" })
    end,
  },
}
