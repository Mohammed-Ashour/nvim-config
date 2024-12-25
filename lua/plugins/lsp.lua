return {
	{
		-- installing and configuring mason
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"pylsp",
					"gopls",
					"rust_analyzer",
					"lua_ls",
				}
			})
		end

	},
	{
		"neovim/nvim-lspconfig",

		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			require("lspconfig").pylsp.setup {capabilities=capabilities}
			require("lspconfig").rust_analyzer.setup {capabilities=capabilities}
			require("lspconfig").gopls.setup {capabilities=capabilities}
			require("lspconfig").lua_ls.setup {capabilities=capabilities}
		end
	}

}
