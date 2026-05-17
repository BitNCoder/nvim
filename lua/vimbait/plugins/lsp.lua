return {

    {
	'williamboman/mason.nvim',
	config = function()
	    require("mason").setup()
	end
    },
    {
	'williamboman/mason-lspconfig.nvim',
	config = function()
	    require("mason-lspconfig").setup({
		ensure_installed = { "lua_ls", "clangd" }
	    })
	end
    },
    {
	'neovim/nvim-lspconfig',
	config = function()
	    vim.lsp.config['lua_ls'] ={
		settings = {
		    Lua = {
			diagnostics = {
			    globals = { "vim" },
			}
		    }
		}
	    }
	    vim.lsp.config['clangd'] = {}
	    vim.lsp.config['lemminx'] = {}
	    vim.lsp.config['hyprls'] = {}
	    vim.lsp.config['pylsp'] = {}

	    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
	    vim.keymap.set('i', '<C-h>', vim.lsp.buf.signature_help, {})
	    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
	    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
	end
    },
}
