return {
    -- LSP UI 美化
    {
        "nvimdev/lspsaga.nvim",
        lazy = true,
        event = "LspAttach",
        keys = {
            { "[e",          "<cmd>Lspsaga diagnostic_jump_prev<CR>",    desc = "Diagnotics Jump Prev" },
            { "]e",          "<cmd>Lspsaga diagnostic_jump_next<CR>",    desc = "Diagnotics Jump Next" },
            { "<leader>lgb", "<cmd>Lspsaga show_buf_diagnostics<CR>",    desc = "Show Buffer Diagnotics" },
            { "<leader>lgd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", desc = "Show Cursor Local Diagnotics" },
            { "<leader>lgr", "<cmd>Lspsaga rename<CR>",                  desc = "Lspsaga Rename" },
            { "<leader>lgp", "<cmd>Lspsaga rename ++project<CR>",        desc = "Lspsaga Rename Project" },
            { "<leader>lgf", "<cmd>Lspsaga peek_definition<CR>",         desc = "Peek Definition" },
            { "<leader>lgg", "<cmd>Lspsaga goto_definition<CR>",         desc = "Goto Definition" },
            { "<leader>lgy", "<cmd>Lspsaga peek_type_definition<CR>",    desc = "Peek Type Definition,<C-t> BackWard" },
            { "<leader>lgx", "<cmd>Lspsaga goto_type_definition<CR>",    desc = "Goto Type Definition" },
            { "<leader>lgh", "<cmd>Lspsaga hover_doc<CR>",               desc = "Show Hover Doc" },
            { "<leader>lgk", "<cmd>Lspsaga hover_doc ++keep<CR>",        desc = "Hover In Upper Right Corner" },
            { "<leader>lgl", "<cmd>Lspsaga show_line_diagnostics<CR>",   desc = "Show Line Diagnotics" },
            { "<leader>lgo", "<cmd>Lspsaga outline<CR>",                 desc = "Lspsaga Toggle Outline" },
            { "<Leader>lgi", "<cmd>Lspsaga incoming_calls<CR>",          desc = "Call Incoming" },
            { "<Leader>lgt", "<cmd>Lspsaga outgoing_calls<CR>",          desc = "Call Outgoing" },
            { "<leader>lgm", "<cmd>Lspsaga term_toggle<CR>",             desc = "Lspsaga Float Terminal" },
            { "<leader>lgn", "<cmd>Lspsaga finder<CR>",                  desc = "Search Finder Definition,<C-t> BackWard" }
        },
        opts = {
            ui = {
                border = "rounded"
            }
        }
    },
    -- LSP 进度提示
    {
        "j-hui/fidget.nvim",
        tag = "legacy",
        lazy = true,
        event = "LspAttach",
        opts = {
            window = {
                border = "rounded"
            }
        }
    }
}
