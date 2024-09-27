-- duck.lua

return {
  "tamton-aquib/duck.nvim",
  config = function()
    vim.keymap.set("n", "<leader>dd", function()
      require("duck").hatch()
    end, {})
    vim.keymap.set("n", "<leader>dk", function()
      require("duck").cook()
    end, {})
    vim.keymap.set("n", "<leader>da", function()
      require("duck").cook_all()
    end, {})

    -- Change 'duck' character:
    -- nnoremap <leader>dd :lua require("duck").hatch("ඞ")<CR>
    -- Some Alternatives: 🦆 ඞ 🦀 🐈 🐎 🦖 🐤
  end,
}
