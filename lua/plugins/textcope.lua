return {
    -- 快速跳转
    {
        "smoka7/hop.nvim",
        version = "*",
        lazy = true,
        keys = {
            { "<leader>hw", "<cmd>HopWord<CR>",      desc = "Search And Jump Word" },
            { "<leader>hl", "<cmd>HopLine<CR>",      desc = "Search And Jump Line" },
            { "<leader>hc", "<cmd>HopChar1<CR>",     desc = "Search And Jump Char(input 1 char)" },
            { "<leader>hd", "<cmd>HopChar2<CR>",     desc = "Search And Jump Char(input 2 char)" },
            { "<leader>ht", "<cmd>HopLineStart<CR>", desc = "Show Each Line 1st Non-blanke Char And Jump" },
            { "<leader>hv", "<cmd>HopVertical<CR>",  desc = "Show Cursor Local Char As Datum Jump" },
            { "<leader>hr", "<cmd>HopPattern<CR>",   desc = "Default Neovim Search And Jump Mix" },
            { "<leader>ha", "<cmd>HopAnywhere<CR>",  desc = "Jump AnyWhere" }
        },
        opts = {}
    },
    -- 文本字符替换
    {
        "AckslD/muren.nvim",
        lazy = true,
        keys = {
            { "<leader>rg", "<cmd>MurenToggle<CR>", desc = "Toggle Muren UI" },
            { "<leader>rf", "<cmd>MurenFresh<CR>",  desc = "Open Muren UI Fresh" },
            { "<leader>ru", "<cmd>MurenUnique<CR>", desc = "Unique Matches" },
        },
        opts = {},
    },
    -- 修改定界符
    {
        "kylechui/nvim-surround",
        version = "*",
        lazy = true,
        event = "VeryLazy",
        config = true
    }
}
