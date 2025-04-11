return {
    {
        "okuuva/auto-save.nvim",
        lazy = true,
        event = { "InsertLeave", "TextChanged" },
        opts = {
            condition = function(buf)
                if vim.fn.getbufvar(buf, "&buftype") ~= '' then
                    return false
                end
                return true
            end
        },
        keys = {
            { "<leader>at", "<cmd>ASToggle<CR>", desc = "Toggle Auto Save" }
        }
    },
    {
        "windwp/nvim-autopairs",
        lazy = true,
        event = "InsertEnter",
        opts = {}
    },
    {
        "ethanholz/nvim-lastplace",
        lazy = true,
        event = "BufReadPost",
        opts = {
            lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
            lastplace_ignore_filetype = { "gitcommit", "gitrebase", "svn", "hgcommit" },
            lastplace_open_folds = true
        }
    }
}
