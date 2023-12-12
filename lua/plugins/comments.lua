return {
    -- 代码注释
    {
        "numToStr/Comment.nvim",
        lazy = true,
        keys = {
            { "gc", mode = { "v", "n" } },
            { "gb", mode = { "v", "n" } },
        },
        config = function()
            require("Comment").setup({
                ignore = "^$",
            })
        end
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
                WARN = { icon = " ", color = "#FBBF24", alt = { "WARNING", "XXX" } },
                PERF = { icon = "󰅒 ", color = "#FC9868", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
                NOTE = { icon = "󰍨 ", color = "#2563EB", alt = { "INFO" } }
            }
        }
    }
}
