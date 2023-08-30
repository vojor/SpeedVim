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
            { "nvim-lspconfig" }
        },
        opts = {
            debug = true,
            lsp = {
                servers = { "vimls", "lua_ls", "bashls", "pylsp", "clangd", "neocmake" }
            }
        }
    }
}
