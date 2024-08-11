-- colorscheme.lua

return {
  {
    "EdenEast/nightfox.nvim",
    config = function()
      require("nightfox").setup({
        options = {
          transparent = true,
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
  --[[
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true
      }
    end,
    config = function()
      vim.cmd("colorscheme solarized-osaka")
    end,
  },
  ]]--
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup()
    end,
  },
}
