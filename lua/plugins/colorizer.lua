return {
    -- 十六进制颜色
    {
        "NvChad/nvim-colorizer.lua",
        lazy = true,
        event = { "BufReadPost", "BufNewFile" },
        opts = {}
    }
}
