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
                sync_install = true,
                ensure_installed = { "c", "cpp", "lua", "vim", "cmake", "bash", "markdown", "markdown_inline",
                    "regex" },
                ignore_install = {},
                auto_install = false,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false
                },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "gnn",
                        node_incremental = "grn",
                        node_decremental = "grc",
                        scope_incremental = "grm"
                    }
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
