return {
    -- 主题
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "macchiato",
                styles = {
                    functions = { "bold" },
                    keywords = { "bold" },
                },
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = false,
                    treesitter = true,
                    notify = true,
                    mini = true,
                    hop = true,
                    lsp_saga = true,
                    mason = true,
                    neotree = true,
                    treesitter_context = true,
                    lsp_trouble = true,
                    illuminate = true,
                    which_key = true,
                }
            })
            vim.cmd("colorscheme catppuccin")
        end
    }
}
