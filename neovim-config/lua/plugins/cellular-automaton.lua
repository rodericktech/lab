-- cellular-automaton.lua

return {
	{
		"eandrju/cellular-automaton.nvim",
		config = function()
			vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")
			vim.keymap.set("n", "<leader>omg", "<cmd>CellularAutomaton game_of_life<CR>")
		end,
	},
}
