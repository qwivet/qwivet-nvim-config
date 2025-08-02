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
}
