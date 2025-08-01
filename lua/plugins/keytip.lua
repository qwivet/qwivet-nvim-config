return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts_extend = { "spec" },
  opts = {
    preset = "modern",

    spec = {
      {
        mode = { "n", "v" },
        { "<leader>t", name = "Toggle windows", icon = { icon = "󰓪", color = "cyan" } },
        { "<leader>l", name = "LSP functions", icon = { icon = "󰡱", color = "lime" } },
        { "<leader>d", name = "DAP functions", icon = { icon = "", color = "red" } },
      },
    },
  },
  keys = {},
}
