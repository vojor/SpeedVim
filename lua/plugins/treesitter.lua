return {
    -- 语法高亮
    {
        "nvim-treesitter/nvim-treesitter",
        build = { ":TSUpdate" },
        lazy = true,
        event = { "BufReadPost", "BufNewFile" },
        cmd = { "TSUpdate", "TSUpdateSync" },
        dependencies = {
            { "nvim-treesitter/nvim-treesitter-textobjects", lazy = true },
            { "JoosepAlviste/nvim-ts-context-commentstring", lazy = true },
        },
        config = function()
            require("nvim-treesitter.configs").setup({
                sync_install = true,
                ensure_installed = { "c", "cpp", "python", "lua", "vim", "cmake", "bash", "markdown", "markdown_inline",
                    "regex" },
                ignore_install = {},
                auto_install = false,
                -- 高亮相关
                highlight = {
                    -- 启用高亮支持
                    enable = true,
                    -- 使用 treesitter 高亮而不是 neovim 内置的高亮
                    additional_vim_regex_highlighting = false
                },
                -- 范围选择
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        -- 初始化选择
                        init_selection = "gnn",
                        -- 递增
                        node_incremental = "grn",
                        -- 递减
                        node_decremental = "grc",
                        -- 选择一个范围
                        scope_incremental = "grm"
                    }
                },
                indent = {
                    enable = true
                },
                context_commentstring = {
                    enable = true,
                    enable_autocmd = false,
                },
                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        keymaps = {
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
                        },
                        selection_modes = {
                            ['@parameter.outer'] = 'v', -- charwise
                            ['@function.outer'] = 'V',  -- linewise
                            ['@class.outer'] = '<M-v>', -- blockwise
                        },
                        include_surrounding_whitespace = true,
                    },
                    swap = {
                        enable = true,
                        swap_next = {
                            ["<leader>aa"] = "@parameter.inner",
                        },
                        swap_previous = {
                            ["<leader>A"] = "@parameter.inner",
                        },
                    },
                    move = {
                        enable = true,
                        set_jumps = true,
                        goto_next_start = {
                            ["]m"] = "@function.outer",
                            ["]]"] = { query = "@class.outer", desc = "Next class start" },
                            ["]o"] = "@loop.*",
                            ["]s"] = { query = "@scope", query_group = "locals", desc = "Next scope" },
                            ["]z"] = { query = "@fold", query_group = "folds", desc = "Next fold" },
                        },
                        goto_next_end = {
                            ["]M"] = "@function.outer",
                            ["]["] = "@class.outer",
                        },
                        goto_previous_start = {
                            ["[m"] = "@function.outer",
                            ["[["] = "@class.outer",
                        },
                        goto_previous_end = {
                            ["[M"] = "@function.outer",
                            ["[]"] = "@class.outer",
                        },
                        goto_next = {
                            ["]d"] = "@conditional.outer",
                        },
                        goto_previous = {
                            ["[d"] = "@conditional.outer",
                        }
                    },
                    lsp_interop = {
                        enable = true,
                        border = 'rounded',
                        floating_preview_opts = {},
                        peek_definition_code = {
                            ["<leader>df"] = "@function.outer",
                            ["<leader>dF"] = "@class.outer",
                        }
                    }
                }
            })
        end
    },
    -- 屏幕显示函数前几行
    {
        "nvim-treesitter/nvim-treesitter-context",
        lazy = true,
        event = { "BufReadPost", "BufNewFile" },
        dependencies = "nvim-treesitter",
        opts = {}
    }
}
