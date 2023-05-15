require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.cmp"
require "user.lsp"
require "user.telescope"
require "user.treesitter"
require'colorizer'.setup()
require('leap').add_default_mappings()

vim.opt.background = "light"
vim.cmd "colorscheme PapercolorSlim"
