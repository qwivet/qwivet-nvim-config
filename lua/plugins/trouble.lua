return {
	"folke/trouble.nvim",
	opts = {
		modes = {
			test = {
				mode = "diagnostics",
				preview = {
					type = "split",
					relative = "win",
					position = "right",
					size = 0.3,
				},
			},
		},
	},
	cmd = "Trouble",
	keys = {
		{
			"<leader>tt",
			"<cmd>Trouble diagnostics toggle<cr>",
			desc = "Toggle trouble window",
		},
		{
			"<leader>tb",
			"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
			desc = "Toggle buffer trouble window",
		},
		{
			"<leader>ts",
			"<cmd>Trouble symbols toggle focus=false<cr>",
			desc = "Toggle symbols window",
		},
		{
			"<leader>tr",
			"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
			desc = "Toggle references window",
		},
		{
			"<leader>tq",
			"<cmd>Trouble qflist toggle<cr>",
			desc = "Toggle qflist",
		},
	},
}
