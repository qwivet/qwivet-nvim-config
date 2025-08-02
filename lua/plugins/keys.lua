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
				{ "<leader>e", name = "Extended vim motions", icon = { icon = "󰐖", color = "green" } },
			},
		},
	},
	keys = {
		{ mode = { "n", "v" }, "<leader>eo", "d<esc>i<cr><esc>O", desc = "Open line between" },
		{ mode = { "n", "v" }, "<leader>ee", "d<esc>i<cr><esc>", desc = "Enter" },
		{ mode = { "n", "v" }, "<leader>ep", "d<esc>a<cr><esc>k$pkgJgJ", desc = "Insert(p) line between" },
		{ mode = { "n", "v" }, "<leader>eP", "d<esc>i<cr><esc>k$pkgJgJ", desc = "Insert(P) line between" },
		{ mode = { "v" }, "<leader>ea'", "\"cd<esc>i''<esc>h\"cp", desc = "Enter" },
		{ mode = { "v" }, "<leader>ea\"", "\"cd<esc>i''<esc>h\"cp", desc = "Enter" },
		{ mode = { "v" }, "<leader>ea(", "\"cd<esc>i()<esc>h\"cp", desc = "Enter" },
		{ mode = { "v" }, "<leader>ea)", "\"cd<esc>i()<esc>h\"cp", desc = "Enter" },
		{ mode = { "v" }, "<leader>ea[", "\"cd<esc>i[]<esc>h\"cp", desc = "Enter" },
		{ mode = { "v" }, "<leader>ea]", "\"cd<esc>i[]<esc>h\"cp", desc = "Enter" },
		{ mode = { "v" }, "<leader>ea{", "\"cd<esc>i{}<esc>h\"cp", desc = "Enter" },
		{ mode = { "v" }, "<leader>ea}", "\"cd<esc>i{}<esc>h\"cp", desc = "Enter" },
		{ mode = { "v" }, "<leader>ea<", "\"cd<esc>i<><esc>h\"cp", desc = "Enter" },
		{ mode = { "v" }, "<leader>ea>", "\"cd<esc>i<><esc>h\"cp", desc = "Enter" },
		{ mode = { "v" }, "<leader>eab", "\"cd<esc>i()<esc>h\"cp", desc = "Enter" },
		{ mode = { "v" }, "<leader>eaB", "\"cd<esc>i{}<esc>h\"cp", desc = "Enter" },
		{ mode = { "v" }, "<leader>ea`", "\"cd<esc>i``<esc>h\"cp", desc = "Enter" },
	},
}
