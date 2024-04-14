return {
    -- 自动保存
    {
        "okuuva/auto-save.nvim",
        lazy = true,
        event = { "InsertLeave", "TextChanged" },
        opts = {},
        keys = {
            { "<leader>at", "<cmd>ASToggle<CR>", desc = "Toggle Auto Save" }
        }
    },
    -- 自动匹配括号
    {
        "windwp/nvim-autopairs",
        lazy = true,
        event = "InsertEnter",
        opts = {}
    },
    -- 自动恢复光标位置
    {
        "ethanholz/nvim-lastplace",
        lazy = true,
        event = "BufReadPost",
        opts = {
            lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
            lastplace_ignore_filetype = { "gitcommit", "gitrebase", "svn", "hgcommit" },
            lastplace_open_folds = true
        }
    }
}
