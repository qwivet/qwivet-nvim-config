return {
	{
		"zenbones-theme/zenbones.nvim",
		dependencies = { "rktjmp/lush.nvim", "folke/trouble.nvim" },
		lazy = false,
		priority = 1000,
		config = function()
			require("trouble").setup({})
			vim.g.zenbones = { transparent_background = true }
			vim.cmd.colorscheme("zenbones")
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
			vim.api.nvim_set_hl(0, "TroubleNormal", { bg = "none" })
			vim.api.nvim_set_hl(0, "LazyNormal", { bg = "none" })
			vim.api.nvim_set_hl(0, "MasonNormal", { bg = "none" })
		end,
	},
}
