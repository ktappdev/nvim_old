-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- tranparent true mode
-- bootstrap lazy.nvim, LazyVim and your plugins
-- install run nvim-tree
require("config.lazy")
-- vim.g.transparent_window = true
