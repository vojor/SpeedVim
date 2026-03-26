return {
    {
        "ray-x/navigator.lua",
        lazy = true,
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            {
                "ray-x/guihua.lua",
                build = "cd lua/fzy && make"
            },
            {
                "neovim/nvim-lspconfig",
                dependencies = {
                    {
                        "mason-org/mason-lspconfig.nvim",
                        lazy = true,
                        cmd = { "LspInstall", "LspUninstall" },
                        dependencies = { "mason.nvim" },
                        opts = {
                            ensure_installed = {},
                        },
                    },
                },
            },
        },
        opts = {
            debug = false,
            lsp = {
                servers = { "vimls", "jsonls", "lua_ls", "bashls", "yamlls" }
            }
        }
    }
}
