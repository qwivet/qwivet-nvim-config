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
	--	{
	--		"sphamba/smear-cursor.nvim",
	--		opts = { cursor_color = "#514965" },
	--	},
	{
		"pseewald/vim-anyfold",
		config = function()
			vim.cmd("filetype plugin indent on")
			vim.cmd("syntax on")
			vim.cmd("autocmd Filetype * AnyFoldActivate")
			vim.cmd("set foldlevel=99")
		end,
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},
	{
		"rcarriga/nvim-notify",
		config = function()
			require("notify").setup({
				background_colour = "#000000",
			})
		end,
	},
	{
		"mluders/comfy-line-numbers.nvim",
		config = function()
			require("comfy-line-numbers").setup({})
		end,
	},
}
