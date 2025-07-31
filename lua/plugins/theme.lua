return {
	--	{
	--		"slugbyte/lackluster.nvim",
	--		lazy = false,
	--		priority = 1000,
	--		init = function()
	--			vim.cmd.colorscheme("lackluster")
	--			-- vim.cmd.colorscheme("lackluster-hack") -- my favorite
	--			-- vim.cmd.colorscheme("lackluster-mint")
	--		end,
	--		config = function()
	--			local ll = require("lackluster")
	--			local color = ll.color
	--			ll.setup({ tweak_background = { normal = "none" } })
	--		end,
	--	},
	--	{
	--		"EdenEast/nightfox.nvim",
	--		config = function ()
	--			require('nightfox').setup({ options = { transparent = true, } } )
	--
	--			vim.cmd("colorscheme terafox")
	--		end,
	--	}
	{
		"zenbones-theme/zenbones.nvim",
		-- Optionally install Lush. Allows for more configuration or extending the colorscheme
		-- If you don't want to install lush, make sure to set g:zenbones_compat = 1
		-- In Vim, compat mode is turned on as Lush only works in Neovim.
		dependencies = "rktjmp/lush.nvim",
		lazy = false,
		priority = 1000,
		-- you can set set configuration options here
		config = function()
			vim.g.zenbones = { transparent_background = true }
			vim.cmd.colorscheme("zenbones")
			--vim.g.zenbones_darken_comments = 45
		end,
	},
}
