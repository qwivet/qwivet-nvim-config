return {
	"mfussenegger/nvim-dap",
	config = function()
		local dap = require("dap")
		dap.adapters.coreclr = {
			type = "executable",
			command = "/home/btw/.local/share/nvim/mason/packages/netcoredbg/libexec/netcoredbg/netcoredbg",
			args = { "--interpreter=vscode" },
		}
		dap.configurations.cs = {
			{
				type = "coreclr",
				name = "launch - netcoredbg",
				request = "launch",
				program = function()
					return vim.fn.getcwd() .. "/bin/Debug/net9.0/Main.dll"
				end,
			},
		}
	end,
	keys = {
		{
			"<leader>db",
			"<cmd>DapToggleBreakpoint<cr>",
			desc = "Debug toggle breakpoint",
		},
		{
			"<leader>dn",
			"<cmd>DapNew<cr>",
			desc = "Debug new",
		},
		{
			"<leader>dc",
			"<cmd>DapContinue<cr>",
			desc = "Debug continue",
		},
		{
			"<leader>do",
			"<cmd>DapStepOver<cr>",
			desc = "Debug step over",
		},
		{
			"<leader>di",
			"<cmd>DapStepInto<cr>",
			desc = "Debug step into",
		},
	},
}
