return {
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
			"marilari88/neotest-vitest",
		},
		config = function()
			require("neotest").setup({
				adapters = {
					require("neotest-vitest")({
						filter_dir = function(name, rel_path, root)
							return name ~= "node_modules"
						end,
					}),
				},
			})
		end,
		keys = {
			{
				"<leader>ct",
				function()
					require("neotest").run.run()
				end,
				desc = "Test current ",
			},
			{
				"<leader>cf",
				function()
					require("neotest").run.run(vim.fn.expand("%"))
				end,
				desc = "Test whole file",
			},
			{
				"<leader>ca",
				function()
					require("neotest").run.run(vim.fn.getcwd())
				end,
				desc = "Test all files",
			},
			{
				"<leader>cT",
				function()
					require("neotest").run.run({ strategy = "dap" })
				end,
				desc = "Debug current test",
			},
			{
				"<leader>cF",
				function()
					require("neotest").run.run({ vim.fn.expand("%"), strategy = "dap" })
				end,
				desc = "Debug whole file tests",
			},
			{
				"<leader>cA",
				function()
					require("neotest").run.run({ vim.fn.getcwd(), strategy = "dap" })
				end,
				desc = "Debug every file tests",
			},
			{
				"<leader>tc",
				function()
					require("neotest").summary.toggle()
				end,
				desc = "Toggle test cases",
			},
		},
	},
	{
		"andythigpen/nvim-coverage",
		version = "*",
		config = function()
			require("coverage").setup({
				commands = true, -- create commands
				highlights = {
					covered = { fg = "#C3E88D" }, -- supports style, fg, bg, sp (see :h highlight-gui)
					uncovered = { fg = "#F07178" },
				},
				signs = {
					covered = { hl = "CoverageCovered", text = "▎" },
					uncovered = { hl = "CoverageUncovered", text = "▎" },
				},
				summary = {
					min_coverage = 80.0, -- minimum coverage threshold (used for highlighting)
				},
				lang = {
					typescript = {
						coverage_file = vim.fn.getcwd() .. "/coverage/lcov.info",
					},
				},
			})
		end,
		keys = {
			{
				"<leader>cl",
				"<cmd>CoverageLoad<CR>",
				desc = "Load coverage",
			},
			{
				"<leader>cc",
				"<cmd>CoverageToggle<CR>",
				desc = "Toggle highlight coverage (don't run it, only show)",
			},
			{
				"<leader>tC",
				"<cmd>CoverageSummary<CR>",
				desc = "Show coverage (don't run it, only show)",
			},
		},
	},
}
