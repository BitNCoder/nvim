return {
    {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
	    { "<Leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
	    {
		"<Leader>fp",
		function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
		desc = "Find Plugin File",
	    },
	    {
		"<Leader>fc",
		function() require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config") }) end,
		desc = "Find Config File",
	    },
	},
    },
}
