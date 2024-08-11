-- treesitter.lua

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local ts_config = require("nvim-treesitter.configs")
		ts_config.setup({
			ensure_installed = {
				"lua",
				"c",
        "elm",
        "go",
				"haskell",
				"html",
				"javascript",
				"markdown",
				"python",
        "rust",
				"typescript",
				"vim",
				"vimdoc",
        "zig",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
