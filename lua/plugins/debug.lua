return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"theHamsta/nvim-dap-virtual-text",
			"zenbones-theme/zenbones.nvim",
		},
		config = function()
			local dap = require("dap")

			local signs = {
				{ "DapBreakpoint", "", "#fa4e4b" },
				{ "DapBreakpointCondition", "", "#a0fa4b" },
				{ "DapLogPoint", "", "#4bc5fa" },
				{ "DapStopped", "", "#b8b8b8" },
				{ "DapBreakpointRejected", "", "#960000" },
			}

			for _, sign in ipairs(signs) do
				vim.fn.sign_define(sign[1], { text = sign[2], texthl = sign[1], linehl = "", numhl = "" })
				vim.cmd("highlight " .. sign[1] .. " guifg=" .. sign[3])
			end

			local mason_path = vim.fn.stdpath("data") .. "/mason"
			dap.adapters.coreclr = {
				type = "executable",
				command = mason_path .. "/packages/netcoredbg/libexec/netcoredbg/netcoredbg",
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

			-- JavaScript/TypeScript Adapter
			dap.adapters["pwa-node"] = {
				type = "server",
				host = "localhost",
				port = "${port}",
				executable = {
					command = "node",
					args = {
						mason_path .. "/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
						"${port}",
					},
				},
			}

			-- TypeScript Configuration with tsx
			dap.configurations.typescript = {
				{
					type = "pwa-node",
					request = "launch",
					name = "Debug with tsx",
					cwd = "${workspaceFolder}",
					runtimeExecutable = "tsx", -- Use tsx directly
					args = {
						"${file}", -- Your entry point file
					},
					sourceMaps = true,
					skipFiles = { "<node_internals>/**", "node_modules/**" },
					resolveSourceMapLocations = {
						"${workspaceFolder}/**",
						"!**/node_modules/**",
					},
					console = "integratedTerminal",
					protocol = "inspector",
					outputCapture = "std",
					timeout = 30000, -- Increase timeout
				},
				{
					type = "pwa-node",
					request = "launch",
					name = "Debug Project",
					cwd = "${workspaceFolder}",
					runtimeExecutable = "npx",
					runtimeArgs = { "tsx", "src/index.ts" }, -- Match your nps command
					skipFiles = { "<node_internals>/**", "node_modules/**" },
					sourceMaps = true,
					console = "integratedTerminal",
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
				"<leader>dw",
				function()
					require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
				end,
				desc = "Debug set when condition breakpoint",
			},
			{
				"<leader>dl",
				function()
					require("dap").set_breakpoint(nil, nil, vim.fn.input("Breakpoint log: "))
				end,
				desc = "Debug set log breakpoint",
			},
			{
				"<leader>dd",
				"<cmd>DapClearBreakpoint<cr>",
				desc = "Debug delete all breakpoints",
			},
			{
				"<leader>dn",
				"<cmd>DapNew<cr>",
				desc = "Debug new",
			},
			{
				"<leader>dt",
				"<cmd>DapTerminate<cr>",
				desc = "Debug terminate",
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
			{
				"<leader>dx",
				"<cmd>DapClearBreakpoints<cr>",
				desc = "Debug step into",
			},
		},
	},
	{
		"theHamsta/nvim-dap-virtual-text",
		opts = {},
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "nvim-neotest/nvim-nio" },
		keys = {
			{
				"<leader>du",
				function()
					require("dapui").toggle({})
				end,
				desc = "DAP UI",
			},
			{
				"<leader>ds",
				function()
					require("dapui").eval()
					require("dapui").eval()
				end,
				desc = "DAP Show Value",
				mode = { "n", "v" },
			},
		},
		opts = { expand_lines = false },
		config = function(_, opts)
			local dapui = require("dapui")
			dapui.setup(opts)
		end,
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		dependencies = "mason.nvim",
		cmd = { "DapInstall", "DapUninstall" },
		opts = {
			automatic_installation = true,

			handlers = {},

			ensure_installed = {},
		},
		config = function() end,
	},
}
