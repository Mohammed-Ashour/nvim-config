return {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		-- or                              , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' },
		extensions = {
			["ui-select"] = {
				require("telescope.themes").get_dropdown {
					-- even more opts
				}
			}
		},
		config = function()
			local builtin = require('telescope.builtin')
			require("telescope").load_extension("ui-select")
		end,
	},
	{
		'nvim-telescope/telescope-ui-select.nvim',
		config = function()
			require("telescope").load_extension("ui-select")
		end,
	},
}
