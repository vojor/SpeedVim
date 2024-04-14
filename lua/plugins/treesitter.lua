return {
    -- 语法高亮
    {
        "nvim-treesitter/nvim-treesitter",
        build = { ":TSUpdate" },
        lazy = true,
        event = { "BufReadPost", "BufNewFile" },
        cmd = { "TSUpdate", "TSUpdateSync" },
        opts = {
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
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
            vim.opt.foldmethod = "expr"
            vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
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
