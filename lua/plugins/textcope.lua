return {
    -- 快速跳转
    {
        "phaazon/hop.nvim",
        branch = "v2",
        lazy = true,
        keys = {
            { "<leader>hw", "<cmd>HopWord<CR>",      desc = "Search And Jump Word" },
            { "<leader>hl", "<cmd>HopLine<CR>",      desc = "Search And Jump Line" },
            { "<leader>hc", "<cmd>HopChar1<CR>",     desc = "Search And Jump Char(input 1 char)" },
            { "<leader>hd", "<cmd>HopChar2<CR>",     desc = "Search And Jump Char(input 2 char)" },
            { "<leader>ht", "<cmd>HopLineStart<CR>", desc = "Show Each Line 1st Non-blanke Char And Jump" },
            { "<leader>hv", "<cmd>HopVertical<CR>",  desc = "Show Cursor Local Char As Datum Jump" },
            { "<leader>hr", "<cmd>HopPattern<CR>",   desc = "Default Neovim Search And Jump Mix" },
            { "<leader>ha", "<cmd>HopAnywhere<CR>",  desc = "Jump AnyWhere" }
        },
        opts = {}
    },
    -- 文本字符替换
    {
        "nvim-pack/nvim-spectre",
        lazy = true,
        keys = {
            { "<leader>ro", mode = "n", desc = "Toggle Spectre" },
            { "<leader>rh", mode = "n", desc = "Search Current Word" },
            { "<leader>rh", mode = "v", desc = "Search Current Word" },
            { "<leader>rf", mode = "n", desc = "Search On Current File" },
        },
        config = function()
            require("spectre").setup({
                mapping = {
                    ['toggle_line'] = {
                        map = "<leader>rd",
                    },
                    ['enter_file'] = {
                        map = "<CR>",
                    },
                    ["send_to_qf"] = {
                        map = "<leader>rq",
                    },
                    ['replace_cmd'] = {
                        map = "<leader>rn",
                    },
                    ['show_option_menu'] = {
                        map = "<leader>rm",
                    },
                    ['run_current_replace'] = {
                        map = "<leader>rc",
                    },
                    ['run_replace'] = {
                        map = "<leader>ra",
                    },
                    ['change_view_mode'] = {
                        map = "<leader>rv",
                    },
                    ['change_replace_sed'] = {
                        map = "<leader>rs",
                    },
                    ['change_replace_oxi'] = {
                        map = "<leader>rx",
                    },
                    ['toggle_live_update'] = {
                        map = "<leader>ru",
                    },
                    ['toggle_ignore_case'] = {
                        map = "<leader>ri",
                    },
                    ['toggle_ignore_hidden'] = {
                        map = "<leader>re",
                    },
                    ['resume_last_search'] = {
                        map = "<leader>rb",
                    },
                }
            })
            vim.keymap.set('n', '<leader>ro', '<cmd>lua require("spectre").toggle()<CR>')
            vim.keymap.set('n', '<leader>rh', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>')
            vim.keymap.set('v', '<leader>rh', '<esc><cmd>lua require("spectre").open_visual()<CR>')
            vim.keymap.set('n', '<leader>rf', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>')
        end
    },
    -- 修改定界符
    {
        "kylechui/nvim-surround",
        version = "*",
        lazy = true,
        event = "VeryLazy",
        config = true
    }
}
