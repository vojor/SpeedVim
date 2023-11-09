return {
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
            if vim.fn.argc(-1) == 1 then
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
    -- 启动界面
    {
        "goolord/alpha-nvim",
        event = "VimEnter",
        opts = function()
            local dashboard = require("alpha.themes.dashboard")
            local logo = [[
                ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗         ▄
                ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║        ▄▀ ▀▄
                ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║       ▄▀    █
                ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║       ▀▄     ▀▄
                ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║        ▀▄    ▄▀
                ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝
                ]]
            dashboard.section.header.val = vim.split(logo, "\n")
            dashboard.section.buttons.val = {
                dashboard.button("f", " " .. " Find file", "<cmd> Telescope find_files <CR>"),
                dashboard.button("c", " " .. " Config", "<cmd> e $MYVIMRC<CR>"),
                dashboard.button("r", " " .. " Recent files", "<cmd> Telescope oldfiles <CR>"),
                dashboard.button("g", " " .. " Find text", "<cmd> Telescope live_grep <CR>"),
                dashboard.button("p", " " .. " Find projects", "<cmd> Telescope projects <CR>"),
                dashboard.button("n", " " .. " New File", "<cmd> ene | startinsert<CR>"),
                dashboard.button("l", "󰒲 " .. " Lazy", "<cmd> Lazy <CR>"),
                dashboard.button("q", " " .. " Quit", "<cmd> qa <CR>"),
            }
            for _, button in ipairs(dashboard.section.buttons.val) do
                button.opts.hl = "AlphaButtons"
                button.opts.hl_shortcut = "AlphaShortcut"
            end
            dashboard.section.header.opts.hl = "AlphaHeader"
            dashboard.section.buttons.opts.hl = "AlphaButtons"
            dashboard.section.footer.opts.hl = "AlphaFooter"
            dashboard.opts.layout[1].val = 2
            return dashboard
        end,
        config = function(_, dashboard)
            if vim.o.filetype == "lazy" then
                vim.cmd.close()
                vim.api.nvim_create_autocmd("User", {
                    once = true,
                    pattern = "AlphaReady",
                    callback = function()
                        require("lazy").show()
                    end,
                })
            end

            require("alpha").setup(dashboard.opts)

            vim.api.nvim_create_autocmd("User", {
                once = true,
                pattern = "LazyVimStarted",
                callback = function()
                    local stats = require("lazy").stats()
                    local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
                    dashboard.section.footer.val = "⚡ Neovim loaded "
                        .. stats.loaded
                        .. "/"
                        .. stats.count
                        .. " plugins in "
                        .. ms
                        .. "ms"
                    pcall(vim.cmd.AlphaRedraw)
                end,
            })
        end,
    },
}
