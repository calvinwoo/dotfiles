return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      { "windwp/nvim-ts-autotag" },
    },
  },
  -- Temp for TS error
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false,
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "biome",
      },
    },
  },

  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "biome" },
        typescript = { "biome" },
        javascriptreact = { "biome" },
        typescriptreact = { "biome" },
        json = { "biome" },
      },
      formatters = {
        biome = {
          command = "biome",
          prepend_args = { "check", "--write" },
        },
      },
    },
  },

  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({})
    end,
  },

  -- https://github.com/supermaven-inc/supermaven-nvim/issues/10#issuecomment-2143551135
  {
    "hrsh7th/nvim-cmp",
    keys = {
      { "<tab>", false, mode = { "i", "s" } },
      { "<s-tab>", false, mode = { "i", "s" } },
    },
  },
}
