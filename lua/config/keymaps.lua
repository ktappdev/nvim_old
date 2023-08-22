-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
-- vim.g.maplocalleader("\\")

vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Last Telescope" }
)

-- write file with localleader + w
keymap("n", "<localleader>w", ":w<cr>", { noremap = true, silent = true, desc = "Write file" })
-- quit with localleader + q
keymap("n", "<localleader>q", ":qa<cr>", { noremap = true, silent = true, desc = "Quit all" })
-- close buffer with localleader + x
keymap("n", "<localleader>x", ":bd<cr>", { noremap = true, silent = true, desc = "Close Buffer" })
--localleader + b for bufferlinepick
keymap("n", "<localleader>b", ":BufferLinePick<cr>", opts)
-- save file with <C-s>
keymap("n", "<C-s>", ":w<cr>", opts)
-- disable arroe keys
keymap("n", "<up>", "", opts)
keymap("n", "<down>", "", opts)
keymap("n", "<left>", "", opts)
keymap("n", "<right>", "", opts)
-- highlight lines then move them up or down with  or K or J :move '< or '> or :move '<-1 or '>+1
-- Resize window using <ctrl> arrow keys
