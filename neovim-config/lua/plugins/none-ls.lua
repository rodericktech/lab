-- none-ls.lua

return {
  "nvimtools/none-ls.nvim",
  dependencies = { 'nvimtools/none-ls-extras.nvim' },
  config = function()
    -- Note: none-ls is a community fork of null-ls
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        require("none-ls.diagnostics.eslint"),
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.shfmt,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
