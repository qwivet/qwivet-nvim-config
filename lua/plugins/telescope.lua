return {{
	"nvim-telescope/telescope.nvim", tag = '0.1.8',
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function ()
		local builtin = require("telescope.builtin")
		vim.keymap.set('n', '<C-p>', builtin.find_files, {})
		vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
	end,
},{
	"princejoogie/dir-telescope.nvim",
	dependencies = {"nvim-telescope/telescope.nvim"},
	config = function()
		require("dir-telescope").setup({
			hidden = true,
			no_ignore = false,
			show_preview = true,
			follow_symlinks = false,
		})
--		vim.keymap.set('n', "<leader>lg", "<cmd>Telescope dir live_grep<CR>", {})
--		vim.keymap.set('n', "<C-p>", "<cmd>Telescope dir find_files<CR>", {})
	end,
}, {
	"nvim-telescope/telescope-ui-select.nvim",
	config = function()
		require("telescope").setup({
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown{}
				}
			}
		})
		require("telescope").load_extension("ui-select")
	end
},}
