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
        "eex",
        "elm",
        "elixir",
        "erlang",
        "go",
				"haskell",
        "heex",
				"html",
				"javascript",
        "json",
        "markdown",
        "markdown_inline",
				"python",
        "rust",
				"typescript",
        "tsx",
				"vim",
				"vimdoc",
        "zig",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
