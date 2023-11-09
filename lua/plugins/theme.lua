return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            require("gruvbox").setup({
                italic = {
                    strings = false,
                }
            })
            vim.cmd("colorscheme gruvbox")
        end
    }
}
