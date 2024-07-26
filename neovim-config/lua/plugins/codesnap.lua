return {
  "mistricky/codesnap.nvim",
  build = "make build_generator",
  config = function()
    vim.keymap.set("x", "<leader>[", ":CodeSnap<CR>")
    vim.keymap.set("x", "<leader>]", ":CodeSnapSave<CR>")

    require("codesnap").setup({
      mac_window_bar = false,
      bg_theme = "bamboo",
      save_path = "~/Pictures",
    })
  end,
}
