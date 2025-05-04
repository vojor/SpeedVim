return {
    -- 模糊查找
    {
        "nvim-telescope/telescope.nvim",
        lazy = true,
        branch = '0.1.x',
        cmd = "Telescope",
        dependencies = {
            { "nvim-telescope/telescope-ui-select.nvim",    lazy = true },
            { "nvim-telescope/telescope-file-browser.nvim", lazy = true },
        },
        config = function()
            require('telescope').setup {
                defaults = {
                    mappings = {
                        i = {
                            ["<C-h>"] = "which_key",
                        },
                    }
                },
                pickers = {},
                extensions = {
                    file_browser = {
                        theme = "ivy",
                        mappings = {
                            ["i"] = {},
                            ["n"] = {},
                        },
                    },
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {}
                    }
                }
            }
            require("telescope").load_extension("ui-select")
            require("telescope").load_extension('file_browser')
            require('telescope').load_extension("projects")
        end,
        keys = {
            { "<leader>sf", "<cmd>Telescope find_files theme=ivy<CR>", desc = "Find Files" },
            { "<leader>sg", "<cmd>Telescope live_grep theme=ivy<CR>",  desc = "Grep Word" },
            { "<leader>sb", "<cmd>Telescope buffers theme=ivy<CR>",    desc = "Find Buffers" },
            { "<leader>sh", "<cmd>Telescope help_tags theme=ivy<CR>",  desc = "Find Help Tags" },
            { "<leader>so", "<cmd>Telescope oldfiles theme=ivy<CR>",   desc = "Find Old Files" },
            { "<leader>sm", "<cmd>Telescope marks theme=ivy<CR>",      desc = "Find Marks" },
            { "<leader>sp", "<cmd>Telescope projects<CR>",             desc = "Find Projects" },
            { "<leader>se", "<cmd>Telescope file_browser<CR>",         desc = "Find File browser Tree" },
        }
    }
}
