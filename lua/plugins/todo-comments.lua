return {
	"folke/todo-comments.nvim",
	cmd = { "TodoTrouble", "TodoTelescope" },
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = { signs = true },

	config = function(_, opts)
		require("todo-comments").setup(opts)
	end,

	keys = {
		{
			"<leader>e]",
			mode = { "n" },
			function()
				require("todo-comments").jump_next()
			end,
			desc = "Jump to next comment",
		},
		{
			"<leader>e[",
			mode = { "n" },
			function()
				require("todo-comments").jump_prev()
			end,
			desc = "Jump to previous comment",
		},
		{
			"<leader>tw",
      "TodoTrouble",
			desc = "Toggle writed comments (trouble)",
		},
	},
}
