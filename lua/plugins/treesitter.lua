return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            local ensure_installed = { "bash", "c", "cpp", "cmake", "lua", "markdown", "markdown_inline", "regex", "vim",
                "yaml" }
            require("nvim-treesitter").install(ensure_installed):wait(300000)
            vim.api.nvim_create_autocmd('FileType', {
                pattern = ensure_installed,
                callback = function()
                    vim.treesitter.start()
                    vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
                    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                end,
            })
        end
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        lazy = true,
        event = { "BufReadPost", "BufNewFile" },
        opts = {}
    }
}
