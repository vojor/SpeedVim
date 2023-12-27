return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        enabled = false,
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "macchiato",
                styles = {
                    comments = { "italic" },
                    keywords = { "bold" },
                    functions = { "bold" },
                },
                integrations = {
                    cmp = true,
                    dashboard = false,
                    flash = false,
                    hop = true,
                    lsp_saga = true,
                    mason = true,
                    gitsigns = true,
                    neotree = true,
                    nvimtree = false,
                    treesitter = true,
                    treesitter_context = true,
                    which_key = true,
                    neogit = false,
                    notify = true,
                    indent_blankline = {
                        enabled = true,
                        scope_color = "",
                        colored_indent_levels = true,
                    },
                    mini = {
                        enabled = true,
                        indentscope_color = "",
                    },
                },
            })
            vim.cmd.colorscheme("catppuccin")
        end,
    },
    {
        "scottmckendry/cyberdream.nvim",
        -- enabled = false,
        priority = 1000,
        config = function()
            require("cyberdream").setup({
                transparent = true,
                italic_comments = true,
                hide_fillchars = true
            })
            vim.cmd.colorscheme("cyberdream")
        end
    }
}
