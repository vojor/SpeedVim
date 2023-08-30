return {
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
