return {
    {
        "L3MON4D3/luasnip",
        event = "InsertEnter",
        dependencies = {
            "rafamadriz/friendly-snippets",
        },
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
            require("luasnip").setup({
                update_events = { "TextChanged", "TextChangedI" },
                delete_check_events = "TextChanged"
            })
        end
    },
    {
        "hrsh7th/nvim-cmp",
        event = { "InsertEnter", "CmdlineEnter" },
        dependencies = {
            { "onsails/lspkind.nvim",      lazy = true },
            { "saadparwaiz1/cmp_luasnip",  lazy = true },
            { "hrsh7th/cmp-nvim-lsp",      lazy = true },
            { "hrsh7th/cmp-buffer",        lazy = true },
            { "hrsh7th/cmp-cmdline",       lazy = true },
            { "FelipeLema/cmp-async-path", lazy = true },
            { "f3fora/cmp-spell",          lazy = true },
        },
        config = function()
            local luasnip = require("luasnip")
            local lspkind = require("lspkind")
            local cmp = require("cmp")
            cmp.setup(
                {
                    snippet = {
                        expand = function(args)
                            luasnip.lsp_expand(args.body)
                        end
                    },
                    window = {
                        completion = cmp.config.window.bordered(),
                        documentation = cmp.config.window.bordered()
                    },
                    sources = cmp.config.sources(
                        {
                            { name = "luasnip" },
                            { name = "nvim_lsp" },
                            { name = "async_path" },
                            { name = "buffer" },
                            { name = "spell" },
                        }
                    ),
                    -- 格式化补全菜单
                    formatting = {
                        format = lspkind.cmp_format(
                            {
                                mode = "symbol_text",
                                with_text = true,
                                maxwidth = 50,
                                ellipsis_char = '...',
                                before = function(entry, vim_item)
                                    vim_item.menu = "[" .. string.upper(entry.source.name) .. "]"
                                    return vim_item
                                end
                            }
                        )
                    },
                    -- 绑定补全相关的按键
                    mapping = cmp.mapping.preset.insert({
                        ['<C-Space>'] = cmp.mapping.complete(),
                        ['<C-e>'] = cmp.mapping.abort(),            --关闭补全
                        ["<C-p>"] = cmp.mapping.select_prev_item(), --选择上一个
                        ["<C-n>"] = cmp.mapping.select_next_item(), --选择下一个
                        ["<CR>"] = cmp.mapping.confirm {            --确认选择
                            behavior = cmp.ConfirmBehavior.Replace,
                            select = true,
                        },
                        ["<Tab>"] = cmp.mapping(function(fallback)
                            if cmp.visible() then
                                cmp.select_next_item()
                            elseif luasnip.expand_or_jumpable() then
                                luasnip.expand_or_jump()
                            else
                                fallback()
                            end
                        end, { "i", "s" }),
                        ['<S-Tab>'] = cmp.mapping(function(fallback)
                            if cmp.visible() then
                                cmp.select_prev_item()
                            elseif luasnip.jumpable(-1) then
                                luasnip.jump(-1)
                            else
                                fallback()
                            end
                        end, { "i", "s" })
                    })
                }
            )
            -- 命令行 / ? 模式提示
            cmp.setup.cmdline({ "/", "?" }, {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources(
                    {
                        { name = 'buffer' }
                    }
                )
            }
            )
            -- 命令行 : 模式提示
            cmp.setup.cmdline(":", {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources(
                    {
                        { name = 'async_path' }
                    },
                    {
                        { name = 'cmdline' }
                    }
                )
            }
            )
        end
    }
}
