return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local treesitter = require("nvim-treesitter.configs")
		treesitter.setup({
			-- A list of parser names, or "all" (the five listed parsers should always be installed)
			ensure_installed = {
				"json",
				"jsx",
				"bash",
				"gitignore",
				"javascript",
				"python",
				"java",
				"kotlin",
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"html",
				"json",
			},

			-- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = true,

			-- Automatically install missing parsers when entering buffer
			-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
			-- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
			context_commentstring = {
				enable = true,
				enable_autocmd = false,
			},
			auto_install = true,
			indent = { enable = true },
			autotag = {
				enable = true,
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = true,
			},
		})
	end,
}
