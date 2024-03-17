-- 设置leader
vim.g.mapleader         = ";"
vim.g.maplocalleader    = ","
-- 设置python位置
vim.g.python3_host_prog = "/usr/bin/python"
-- 防止包裹
vim.opt.wrap            = false
-- 默认新窗口在右和下
vim.opt.splitright      = true
vim.opt.splitbelow      = true
-- 行号显示 绝对行号和相对行号
vim.opt.number          = true
vim.opt.relativenumber  = true
-- 显示标尺
vim.opt.ruler           = true
-- 无操作时候交换文件写入磁盘等待的时间
vim.opt.updatetime      = 200
-- 高亮当前文本行
vim.opt.cursorline      = true
-- 等待按键时长的时间
vim.opt.timeoutlen      = 500
-- 外部修改时自动加载
vim.opt.autowrite       = true
vim.opt.autoread        = true
-- 退出时提示确认
vim.opt.confirm         = true
-- 编码设置和检测
vim.opt.fileencoding    = "utf-8"
vim.opt.fileencodings   = { "ucs-bom", "utf-8", "utf-16", "utf-32", "gb18030", "gbk", "gb2312", "latin1" }
-- 显示左侧图标指示列
vim.wo.signcolumn       = "yes"
-- 搜索设置
vim.opt.ignorecase      = true
vim.opt.smartcase       = true
vim.opt.incsearch       = true
vim.opt.hlsearch        = true
-- 拼写建议
vim.opt.spell           = true
vim.opt.spelllang       = { 'en_us' }
-- 鼠标支持
vim.opt.mouse           = "a"
-- 启用系统剪切板
vim.opt.clipboard       = "unnamedplus"
-- 缓存文件设置
vim.opt.backup          = false
vim.opt.writebackup     = false
vim.opt.swapfile        = false
-- 显示特殊字符
vim.opt.list            = true
-- 特殊字符配置
vim.opt.listchars       = "space:·,tab:▸ ,eol:↴"
-- complete plus
vim.opt.wildmenu        = true
-- 终端24位色彩支持
vim.opt.termguicolors   = true
-- 设置缩进
vim.opt.breakindent     = true
vim.opt.autoindent      = true
vim.opt.tabstop         = 4
vim.opt.shiftwidth      = 4
vim.opt.softtabstop     = 4
vim.opt.expandtab       = true
vim.opt.shiftround      = true
-- 插入括号时短暂跳转到另一半括号
vim.opt.showmatch       = true
-- 光标在行首尾时<Left><Right>可以跳到下一行
vim.opt.whichwrap       = "<,>,[,]"
-- 在视觉块模式下，允许光标在没有文字的地方移动
vim.opt.virtualedit     = "block"
-- 补全最多显示16行
vim.opt.pumheight       = 16
-- 使用增强状态栏插件后不再需要 vim 的模式提示
vim.opt.showmode        = false
-- 开启folding
vim.opt.foldmethod      = "expr"
vim.opt.foldexpr        = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel       = 99
vim.opt.foldcolumn      = '1'
vim.opt.foldlevelstart  = 99
vim.opt.foldenable      = true
-- 命令行高度
vim.opt.cmdheight       = 0
