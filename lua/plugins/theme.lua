return {
    {
        "catppuccin/nvim",
        enabled = false,
        name = "catppuccin",
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
        "alexmozaidze/palenight.nvim",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("palenight")
        end
    }
}
