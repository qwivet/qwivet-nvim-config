return {
  {
    "FabijanZulj/blame.nvim",
    lazy = false,
    opts = {
      focus_blame = false,
    },
    config = function()
      require("blame").setup({})
    end,
    keys = {
      { "<leader>th", "<cmd>BlameToggle<cr>",         desc = "Toggle git file history" },
      { "<leader>tv", "<cmd>BlameToggle virtual<cr>", desc = "Toggle git file virtual history" },
    },
  },
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },

    dependencies = {
      "nvim-lua/plenary.nvim",
    },

    keys = {
      { "<leader>tg", "<cmd>LazyGit<cr>", desc = "Open LazyGit" },
    },
  },
}
