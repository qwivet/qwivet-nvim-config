return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      --"3rd/image.nvim",
    },
    config = function()
      --vim.opt.termguicolors = true
      --local tree = require("nvim-tree.api")
      --vim.keymap.set('n', '<leader>crp', tree.tree.change_root_to_parent, {})
      vim.keymap.set("n", "<leader>tn", ":Neotree toggle<CR>", { desc = "Toggle NeoTree" })
    end,
  },
  {
    "antosha417/nvim-lsp-file-operations",
    dependencies = {
      "nvim-lua/plenary.nvim",
      -- Uncomment whichever supported plugin(s) you use
      -- "nvim-tree/nvim-tree.lua",
      -- "nvim-neo-tree/neo-tree.nvim",
      -- "simonmclean/triptych.nvim"
    },
    config = function()
      require("lsp-file-operations").setup()
    end,
  },
}
