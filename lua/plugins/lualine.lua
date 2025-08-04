return {
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup({
				options = {
					theme = "iceberg_dark",
          section_separators = { left = "", right = ""},
          globalstatus = true,
				},
			})
		end,
	},
}
