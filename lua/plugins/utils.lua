return {
    -- 非活动代码变暗
    {
        "folke/twilight.nvim",
        lazy = true,
        keys = {
            { "<leader>tl", "<cmd>Twilight<CR>", desc = "Open Twilight" }
        },
        opts = {}
    },
    -- 禅模式
    {
        "folke/zen-mode.nvim",
        lazy = true,
        keys = {
            { "<leader>tz", "<cmd>ZenMode<CR>", desc = "Open Zen Mode" }
        },
        opts = {}
    },
    -- 优化buffer关闭
    {
        "famiu/bufdelete.nvim",
        lazy = true,
        keys = {
            { "<leader>bd", "<cmd>Bdelete!<CR>", desc = "Close Buffer" }
        }
    },
    -- 显示一个弹出窗口，其中包含您开始输入的命令的可能键绑定
    {
        "folke/which-key.nvim",
        lazy = true,
        event = "VeryLazy",
        opts_extend = { "spec" },
        opts = {
            defaults = {},
            spec = {
                {
                    mode = { "n", "v" },
                    { "<leader>a",  group = "autotool" },
                    { "<leader>b",  group = "buffer" },
                    { "<leader>c",  group = "command" },
                    { "<leader>g",  group = "git" },
                    { "<leader>i",  group = "highlight" },
                    { "<leader>l",  group = "lsp" },
                    { "<leader>lg", group = "lspsaga" },
                    { "<leader>m",  group = "manager" },
                    { "<leader>r",  group = "replace" },
                    { "<leader>s",  group = "search" },
                    { "<leader>t",  group = "zen" },
                    { "<leader>w",  group = "window" },
                    { "<leader>x",  group = "diagnostics/quickfix" }
                }
            }
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
        config = function(_, opts)
            local wk = require("which-key")
            wk.setup(opts)
            if not vim.tbl_isempty(opts.defaults) then
                wk.register(opts.defaults)
            end
        end,
    },
    -- 显示缩进线
    {
        "shellRaining/hlchunk.nvim",
        lazy = true,
        event = { "BufReadPost", "BufNewFile" },
        opts = {
            chunk = {
                enable = true
            },
            indent = {
                enable = true
            }
        }
    },
    -- 彩虹括号
    {
        "HiPhish/rainbow-delimiters.nvim",
        lazy = true,
        event = { "BufReadPost", "BufNewFile" },
        config = function()
            local rainbow_delimiters = require 'rainbow-delimiters'
            require("rainbow-delimiters.setup").setup({
                strategy = {
                    [''] = rainbow_delimiters.strategy['global'],
                },
                query = {
                    [''] = 'rainbow-delimiters',
                },
                highlight = {
                    'RainbowDelimiterRed',
                    'RainbowDelimiterYellow',
                    'RainbowDelimiterBlue',
                    'RainbowDelimiterOrange',
                    'RainbowDelimiterGreen',
                    'RainbowDelimiterViolet',
                    'RainbowDelimiterCyan',
                },
            })
        end
    },
    {
        "max397574/better-escape.nvim",
        lazy = true,
        event = "InsertEnter",
        opts = {}
    },
    -- 显示光标下相同词汇
    {
        "RRethy/vim-illuminate",
        lazy = true,
        event = { "BufReadPost", "BufNewFile" },
        config = function()
            require("illuminate").configure()
        end,
        keys = {
            { "<leader>ig", "<cmd>IlluminateToggle<CR>",    desc = "Toggle Illuminate" },
            { "<leader>ib", "<cmd>IlluminateToggleBuf<CR>", desc = "Toggle Local Buffer Illuminate" }
        }
    }
}
