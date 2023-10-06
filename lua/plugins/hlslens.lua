return {
    -- 搜索时显示条目
    {
        "kevinhwang91/nvim-hlslens",
        event = "VeryLazy",
        config = function()
            require("scrollbar.handlers.search").setup()
            local kopts = { noremap = true, silent = true }
            vim.keymap.set('n', 'n',
                [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]],
                kopts)
            vim.keymap.set('n', 'N',
                [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]],
                kopts)
            vim.keymap.set('n', '*', [[*<Cmd>lua require('hlslens').start()<CR>]], kopts)
            vim.keymap.set('n', '#', [[#<Cmd>lua require('hlslens').start()<CR>]], kopts)
            vim.keymap.set('n', 'g*', [[g*<Cmd>lua require('hlslens').start()<CR>]], kopts)
            vim.keymap.set('n', 'g#', [[g#<Cmd>lua require('hlslens').start()<CR>]], kopts)
            vim.keymap.set('n', '<Leader>hn', '<Cmd>nohlsearch<CR>', kopts)
        end
    }
}
