return {
	{
		"zenbones-theme/zenbones.nvim",
		dependencies = "rktjmp/lush.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.zenbones = { transparent_background = true }
			vim.cmd.colorscheme("zenbones")
		end,
	},
}
