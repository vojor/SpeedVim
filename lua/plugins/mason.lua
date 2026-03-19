return {
    {
         {
           "mason-org/mason.nvim",
           build = ":MasonUpdate",
           lazy = true,
           cmd = { "Mason", "MasonInstall", "MasonUninstall", "MasonLog", "MasonUpdate" },
        keys = { { "<leader>jm", "<cmd>Mason<CR>", desc = "Manage Server" } },
       opts = {
            log_level = vim.log.levels.ERROR,
           ui = {
                 border = "rounded",
                icons = {                   package_installed = "✓",
                   package_pending = "➜",
                   package_uninstalled = "✗",
                },
            },
          },

    },
},
}
