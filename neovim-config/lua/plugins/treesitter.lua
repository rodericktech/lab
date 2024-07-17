return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local ts_config = require("nvim-treesitter.configs")
		ts_config.setup({
			ensure_installed = { "lua", "javascript", "python", "c", "vim", "vimdoc", "html", "typescript", "haskell" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
