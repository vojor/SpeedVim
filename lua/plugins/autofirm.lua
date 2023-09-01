return {
    -- 自动保存
    {
        "okuuva/auto-save.nvim",
        lazy = true,
        event = { "InsertLeave", "BufWrite" },
        opts = {},
        keys = {
            { "<leader>at", "<cmd>ASToggle<CR>", desc = "Toggle Auto Save" }
        }
    },
    -- 自动匹配括号
    {
        "windwp/nvim-autopairs",
        lazy = true,
        event = { "InsertEnter", "CmdlineEnter" },
        opts = {}
    },
    -- 自动恢复光标位置
    {
        "ethanholz/nvim-lastplace",
        lazy = true,
        event = "BufReadPost",
        opts = {
            --这些 buffer 类型不记录光标位置
            lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
            -- 这些文件类型不记录光标位置
            lastplace_ignore_filetype = { "gitcommit", "gitrebase", "svn", "hgcommit" },
            -- 恢复光标时打开折叠恢复位置
            lastplace_open_folds = true
        }
    }
}
