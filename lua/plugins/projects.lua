return {
    -- 工程管理
    {
        "ahmedkhalf/project.nvim",
        event = "VimEnter",
        config = function ()
            require("project_nvim").setup()
        end
    }
}
