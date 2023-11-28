return {
    -- 十六进制颜色
    {
        "NvChad/nvim-colorizer.lua",
        lazy = true,
        keys = {
            { "<leader>ic", "<cmd>ColorizerToggle<CR>", desc = "Toggle Colorizer" }
        },
        opts = {}
    }
}
