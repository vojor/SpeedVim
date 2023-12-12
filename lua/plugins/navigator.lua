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
            { "neovim/nvim-lspconfig" }
        },
        opts = {
            debug = false,
            lsp = {
                servers = { "vimls", "lua_ls", "bashls", "clangd", "neocmake", "yamlls", "pyright" }
            }
        }
    }
}
