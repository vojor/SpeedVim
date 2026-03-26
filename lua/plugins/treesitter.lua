return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            local ensure_installed = { "bash", "json", "lua", "make", "markdown", "markdown_inline", "regex", "vim",
                "yaml", "zsh" }
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
