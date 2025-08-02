return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
			parser_config.kolibri = {
				install_info = {
					url = "https://github.com/qwivet/tree-sitter-kolibri.git",
					branch = "main",
					files = { "src/parser.c" },
					generate_requires_npm = false,
					requires_generate_from_grammar = false,
				},
				filetype = "k",
			}
			vim.filetype.add({
				extension = {
					k = "kolibri",
				},
			})
			local config = require("nvim-treesitter.configs")
			config.setup({
				ensure_installed = {
					"lua",
					"haskell",
					"xml",
					"c_sharp",
					"elm",
					"markdown",
					"fsharp",
					"kolibri",
					"typescript",
				},
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}
