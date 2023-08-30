vim.opt.background = "light"

return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "f-person/auto-dark-mode.nvim",
    opts = {
      set_dark_mode = function()
        vim.api.nvim_set_option("background", "dark")
      end,
      set_light_mode = function()
        vim.api.nvim_set_option("background", "light")
      end,
    },
    init = function()
      local auto_dark_mode = require("auto-dark-mode")
      auto_dark_mode.init()
    end,
  },
}
