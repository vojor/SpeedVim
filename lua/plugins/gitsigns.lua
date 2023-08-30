return {
    -- 显示git信息
    {
        "lewis6991/gitsigns.nvim",
        event = "VeryLazy",
        config = function()
            require("gitsigns").setup()
            require("scrollbar.handlers.gitsigns").setup()
        end,
        keys = {
            { "<leader>gi", "<cmd>Gitsigns<CR>",                           desc = "Open Gitsigns Select Args" },
            { "<leader>gt", "<cmd>Gitsigns toggle_signs<CR>",              desc = "Gitsigns Toggle Sings" },
            { "<leader>gh", "<cmd>Gitsigns toggle_numhl<CR>",              desc = "Gitsigns Toggle Numhl" },
            { "<leader>ge", "<cmd>Gitsigns toggle_linehl<CR>",             desc = "Gitsigns Toggle Linehl" },
            { "<leader>gw", "<cmd>Gitsigns toggle_word_diff<CR>",          desc = "Gitsigns Toggle Word Diff" },
            { "<leader>gc", "<cmd>Gitsigns toggle_current_line_blame<CR>", desc = "Gitsigns Toggle Current Line Blame" },
            { "<leader>gf", "<cmd>Gitsigns diffthis<CR>",                  desc = "Gitsigns This Diif" }
        }
    }
}
