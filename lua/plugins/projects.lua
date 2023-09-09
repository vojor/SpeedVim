return {
    -- 工程管理
    {
        "ahmedkhalf/project.nvim",
        lazy =true,
        event = "VeryLazy",
        config = function ()
            require("project_nvim").setup()
        end
    }
}
