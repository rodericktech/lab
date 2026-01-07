-- lsp-config.lua

return {
  {
    {
      "mason-org/mason.nvim",
      opts = {},
    },
  },
  {
    {
      "mason-org/mason-lspconfig.nvim",
      dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
      },
      config = function()
        require("mason-lspconfig").setup({
          ensure_installed = {
            "bashls",
            "cssls",
            "elp",
            "eslint",
            "elixirls",
            "hls",
            "lua_ls",
            "pyright",
            "sqlls",
            "ts_ls",
            "yamlls",
          },
          automatic_enable = true,
        })

        vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
        vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

        -- Open eslint messages
        vim.keymap.set(
          "n",
          "<leader>e",
          vim.diagnostic.open_float,
          { desc = "Open floating diagnostic message" }
        )
      end,
    },
  },
  --[[
  -- Previous Config, Mason v1
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("mason-lspconfig").setup()

      require("mason-lspconfig").setup_handlers({
        -- Will be called for each installed server that doesn't have
        -- a dedicated handler.
        --
        function(server_name) -- default handler (optional)
          -- https://github.com/neovim/nvim-lspconfig/pull/3232
          if server_name == "tsserver" then
            server_name = "ts_ls"
          end

          local capabilities = require("cmp_nvim_lsp").default_capabilities()
          require("lspconfig")[server_name].setup({
            capabilities = capabilities,
          })

          local lspconfig = require("lspconfig")
          lspconfig.elixirls.setup({
            -- you need to specify the executable command manually for elixir-ls
            cmd = { "/home/mmr/bin/elixir-ls/language_server.sh" },
          })
        end,
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

      -- Open eslint messages
      vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
    end,
  },
  ]]
  --
}
