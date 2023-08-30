return {
    -- 改进了与Telescope、fzf等的内置接口
    {
        "stevearc/dressing.nvim",
        lazy = true,
        opts = {}
    },
    -- neovim的UI组件库
    {
        "MunifTanjim/nui.nvim",
        lazy = true
    },
    -- 作为其它插件的依赖插件，减少lua函数的编写
    {
        "nvim-lua/plenary.nvim",
        lazy = true
    },
    -- 用户保存会话，输入历史
    {
        "kkharji/sqlite.lua",
        lazy = true
    },
    -- 图标支持插件
    {
        "nvim-tree/nvim-web-devicons",
        lazy = true,
        opts = {}
    }
}
