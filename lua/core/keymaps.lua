-- 快捷命令
vim.keymap.set('n', '<leader>ce', ':e<space>')
vim.keymap.set("n", '<leader>cw', '<cmd>w<CR>')
vim.keymap.set("n", '<leader>cW', '<cmd>wa<CR>')
vim.keymap.set("n", '<leader>cE', '<cmd>e!<CR>')
vim.keymap.set("n", '<leader>cq', '<cmd>q<CR>')
vim.keymap.set("n", '<leader>cQ', '<cmd>q!<CR>')
vim.keymap.set("n", '<leader>cx', '<cmd>x<CR>')
-- 健康检查
vim.keymap.set("n","<leader>ch", "<cmd>checkhealth<CR>")


-- 退出终端插入模式
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- window
vim.keymap.set('n', '<leader>wh', '<c-w>h')
vim.keymap.set('n', '<leader>wj', '<c-w>j')
vim.keymap.set('n', '<leader>wk', '<c-w>k')
vim.keymap.set('n', '<leader>wl', '<c-w>l')
vim.keymap.set('n', '<leader>w1', '<c-w>o')
vim.keymap.set("n", "<leader>wv", "<c-w>v") -- 水平新增窗口
vim.keymap.set("n", "<leader>ws", "<c-w>s") -- 垂直新增窗口
