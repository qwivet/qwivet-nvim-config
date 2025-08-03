return {
  {
    "otavioschwanck/cool-substitute.nvim",
    config = function()
      require("cool-substitute").setup({})
    end,
  },
  {
    "karb94/neoscroll.nvim",
    opts = { hide_cursor = false, duration_multiplier = 0.5, easing = "quadratic" },
  },
  {
    "sphamba/smear-cursor.nvim",
    opts = { cursor_color = "#514965" },
  },
  {
    "pseewald/vim-anyfold",
    config = function()
      vim.cmd("filetype plugin indent on")
      vim.cmd("syntax on")
      vim.cmd("autocmd Filetype * AnyFoldActivate")
      vim.cmd("set foldlevel=99")
    end,
  },
}
