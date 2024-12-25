return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
	opts = {
		highlight = { enable = true },
		indent = { enable = true },
		ensure_installed = {
		  "bash",
		  "c",
		  "diff",
		  "html",
		  "go",
		  "javascript",
		  "json",
		  "markdown",
		  "markdown_inline",
		  "python",
		  "regex",
		  "xml",
		  "yaml",
		},
		sync_install = false,
		auto_install = true,
	}

    require("nvim-treesitter.configs").setup(opts)
  end,
}
