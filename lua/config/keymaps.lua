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
-- normal mode 'jj' to escape
keymap("i", "jj", "<esc>", opts)
-- write file with localleader + w
keymap("n", "<localleader>w", ":wa<cr>", { noremap = true, silent = true, desc = "Write file" })
-- quit with localleader + q
keymap("n", "<localleader>q", ":q<cr>", { noremap = true, silent = true, desc = "Quit all" })
-- close buffer with localleader + x
keymap("n", "<localleader>x", ":bd<cr>", { noremap = true, silent = true, desc = "Close Buffer" })
--localleader + b for bufferlinepick
keymap("n", "<localleader>b", ":BufferLinePick<cr>", opts)
-- save file with <C-s>
keymap("n", "<C-s>", ":w<cr>", opts)
-- open :Explorer with <localleader-e>
keymap("n", "<localleader>e", ":Explore<cr>", opts)
-- disable arroe keys
keymap("n", "<up>", "", opts)
keymap("n", "<down>", "", opts)
keymap("n", "<left>", "", opts)
keymap("n", "<right>", "", opts)
-- highlight lines then move them up or down with  or K or J :move '< or '> or :move '<-1 or '>+1
-- Resize window using <ctrl> arrow keys
keymap("n", "<C-Up>", ":resize -2<cr>", opts)
keymap("n", "<C-Down>", ":resize +2<cr>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<cr>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<cr>", opts)
-- keymaps for ChatGPT plugin
-- map key for :ChatGPT add proper description
keymap("n", "<localleader>gg", ":ChatGPT<cr>", opts)
-- map for :ChatGPTCompleteCode
keymap("n", "<localleader>gc", ":ChatGPTCompleteCode<cr>", opts)
-- map for :ChatGPTEditWithInstructions
keymap("n", "<localleader>gi", ":ChatGPTEditWithInstructions<cr>", opts)
-- map for :ChatGPTRun use two keys like local leader g and r
keymap("n", "<localleader>gt", ":ChatGPTRun add_tests<cr>", opts)
keymap("n", "<localleader>gc", ":ChatGPTRun complete_code<cr>", opts)
keymap("n", "<localleader>ge", ":ChatGPTRun explain_code<cr>", opts)
keymap("n", "<localleader>gf", ":ChatGPTRun fix_bugs<cr>", opts)
keymap("n", "<localleader>go", ":ChatGPTRun optimize_code<cr>", opts)
keymap("n", "<localleader>gs", ":ChatGPTRun summarize<cr>", opts)
keymap("n", "<leader>v", ":lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
keymap("n", "<leader>m", ":lua require('harpoon.mark').add_file()<cr>", opts)
