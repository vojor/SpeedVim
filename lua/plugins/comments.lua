return {
    -- 代码注释
    {
        "folke/ts-comments.nvim",
        event = "VeryLazy",
        opts = {}
    },
    -- TODO注释样式
    {
        "folke/todo-comments.nvim",
        lazy = true,
        event = { "BufReadPost", "BufNewFile" },
        opts = {
            keywords = {
                FIX = {
                    icon = " ",
                    color = "#DC2626",
                    alt = { "FIXME", "BUG", "FIXIT", "ISSUE", "!" }
                },
                TODO = { icon = " ", color = "#10B981" },
                HACK = { icon = " ", color = "#7C3AED" },
                WARN = { icon = " ", color = "#FBBF24", alt = { "WARNING", "XXX","!!!" } },
                PERF = { icon = "󰅒 ", color = "#FC9868", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
                NOTE = { icon = "󰍨 ", color = "#2563EB", alt = { "INFO" } }
            }
        }
    }
}
