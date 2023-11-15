return {
    -- 语法高亮
    {
        "nvim-treesitter/nvim-treesitter",
        build = { ":TSUpdate" },
        lazy = true,
        event = { "BufReadPost", "BufNewFile" },
        cmd = { "TSUpdate", "TSUpdateSync" },
        config = function()
            require("nvim-treesitter.configs").setup({
                sync_install = false,
                ensure_installed = { "c", "cpp", "lua", "vim", "cmake", "bash", "markdown", "markdown_inline",
                    "regex", "yaml" },
                ignore_install = {},
                auto_install = false,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false
                },
                incremental_selection = {
                    enable = false,
                },
                indent = {
                    enable = true
                },
            })
        end
    },
    -- 屏幕显示函数前几行
    {
        "nvim-treesitter/nvim-treesitter-context",
        lazy = true,
        event = { "BufReadPost", "BufNewFile" },
        opts = {}
    }
}
