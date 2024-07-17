return {
  {
    "EdenEast/nightfox.nvim",
    config = function()
      require("nightfox").setup({
        options = {
          styles = {
            comments = "italic",
            keywords = "bold",
          },
        },
      })

      -- vim.cmd("colorscheme nightfox")
      -- vim.cmd("colorscheme carbonfox")
      -- vim.cmd("colorscheme duskfox")
      -- vim.cmd("colorscheme nordfox")
      vim.cmd("colorscheme terafox")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup()
    end,
  },
}
