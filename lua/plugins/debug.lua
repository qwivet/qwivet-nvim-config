return {
    'mfussenegger/nvim-dap',
    config = function()
        local dap = require("dap")
        dap.adapters.coreclr = {
            type = 'executable',
            command = '/home/btw/.local/share/nvim/mason/packages/netcoredbg/libexec/netcoredbg/netcoredbg',
            args = {'--interpreter=vscode'}
        }
        dap.configurations.cs = {
            {
                type = "coreclr",
                name = "launch - netcoredbg",
                request = "launch",
                program = function()
                    return vim.fn.getcwd() .. '/bin/Debug/net9.0/Main.dll'
                end,
            },
        }
    end,
    keys = {
        {
            "<leader>cb",
            "<cmd>DapToggleBreakpoint<cr>",
        },
        {
            "<leader>cd",
            "<cmd>DapNew<cr>",
        },
        {
            "<leader>bn",
            "<cmd>DapContinue<cr>",
        },
        {
            "<leader>bo",
            "<cmd>DapStepOver<cr>",
        },
        {
            "<leader>bi",
            "<cmd>DapStepInto<cr>",
        }

    }
}
