return {
        {
                "catppuccin/nvim",
                priority = 1000,
                name = "catppuccin",
                opts = {
                        integrations = {
                                telescope = true,
				treesitter = true,
                        },
                },

                config = function()
                        require("catppuccin").setup()

                        vim.cmd.colorscheme "catppuccin-macchiato"
                end,

        },
}
