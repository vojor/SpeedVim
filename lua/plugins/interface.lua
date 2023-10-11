return {
    -- 显示界面
    {
        "echasnovski/mini.starter",
        version = false,
        event = "VimEnter",
        opts = function()
            local logo = table.concat({
                "███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
                "████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
                "██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
                "██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
                "██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
                "╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
            }, "\n")
            local pad = string.rep(" ", 0)
            local new_section = function(name, action, section)
                return { name = name, action = action, section = pad .. section }
            end

            local starter = require("mini.starter")
            local config = {
                evaluate_single = true,
                header = logo,
                items = {
                    new_section("Find file ", "Telescope find_files", "Inquiry"),
                    new_section("Recent files ", "Telescope oldfiles", "Inquiry"),
                    new_section("Grep text ", "Telescope live_grep", "Inquiry"),
                    new_section("Open last projects ", "Telescope projects", "Inquiry"),
                    new_section("Settings ", "e $MYVIMRC", "Config"),
                    new_section("Lazy 鈴", "Lazy", "Config"),
                    new_section("New file ", "ene | startinsert", "Built-in"),
                    new_section("Quit ", "qa", "Built-in"),
                },
                content_hooks = {
                    starter.gen_hook.adding_bullet(pad .. "░ ", false),
                    starter.gen_hook.aligning("center", "center"),
                },
            }
            return config
        end,
        config = function(_, config)
            if vim.o.filetype == "lazy" then
                vim.cmd.close()
                vim.api.nvim_create_autocmd("User", {
                    pattern = "MiniStarterOpened",
                    callback = function()
                        require("lazy").show()
                    end,
                })
            end
            local starter = require("mini.starter")
            starter.setup(config)
        end
    },
    -- 文件目录树
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        lazy = true,
        cmd = "Neotree",
        keys = {
            { "<leader>ng", "<cmd>Neotree toggle<CR>", desc = "Toggle Neo Tree" },
            { "<leader>nf", "<cmd>Neotree float<CR>",  desc = "Open Float Neo Tree" },
        },
        init = function()
            if vim.fn.argc() == 1 then
                local stat = vim.loop.fs_stat(vim.fn.argv(0))
                if stat and stat.type == "directory" then
                    require("neo-tree")
                end
            end
        end,
        opts = {
            filesystem = {
                follow_current_file = {
                    enable = true,
                },
                use_libuv_file_watcher = true,
            },
            default_component_configs = {
                indent = {
                    with_expander = true,
                    expander_collapsed = "",
                    expander_expanded = "",
                }
            },
            source_selector = {
                winbar = true,
                statusline = true
            }
        }
    },
    -- 显示滚动条
    {
        "petertriho/nvim-scrollbar",
        event = "VeryLazy",
        config = function()
            local colors = {
                Handle = "#EE9088",
                Search = "#1FC867",
                Error = "#FD6883",
                Warn = "#FFD886",
                Info = "#A9DC76",
                Hint = "#78DCE8",
                Misc = "#AB9DF2"
            }
            require("scrollbar").setup(
                {
                    handle = {
                        -- 滚动条颜色
                        color = colors.Handle
                    },
                    marks = {
                        Search = { color = colors.Search },
                        Error = { color = colors.Error },
                        Warn = { color = colors.Warn },
                        Info = { color = colors.Info },
                        Hint = { color = colors.Hint },
                        Misc = { color = colors.Misc }
                    },
                    handlers = {
                        gitsigns = true,
                    }
                }
            )
        end
    }
}
