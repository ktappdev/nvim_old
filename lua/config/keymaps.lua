local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set
local harpoon = require("harpoon")
-- local apm = require("vim-apm")
-- apm:setup({})
-- REQUIRED
harpoon:setup({})
-- REQUIRED


keymap(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Last Telescope" }
)
keymap("n", "<leader>apm", function() apm:toggle_monitor() end)
-- normal mode 'jj' to escape
keymap("i", "jk", "<esc>", opts)
keymap("i", "jj", "<esc> :wa<cr>", opts)

-- write file with localleader + w
keymap("n", "<localleader>w", ":wa<cr>", { noremap = true, silent = true, desc = "Write all files" })
-- quit with localleader + q
keymap("n", "<localleader>q", ":q<cr>", { noremap = true, silent = true, desc = "Quit all" })
-- close buffer with localleader + x
keymap("n", "<localleader>x", ":bd<cr>", { noremap = true, silent = true, desc = "Close Buffer" })
-- save file with <C-s>
keymap("n", "<C-s>", ":wa<cr>", opts)
-- disable arrow keys
keymap("n", "<up>", "", opts)
keymap("n", "<down>", "", opts)
keymap("n", "<left>", "", opts)
keymap("n", "<right>", "", opts)
-- Resize window using <ctrl> arrow keys
keymap("n", "<C-Up>", ":resize -2<cr>", opts)
keymap("n", "<C-Down>", ":resize +2<cr>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<cr>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<cr>", opts)

-- Harpoon
keymap("n", "<M-a>", function() harpoon:list():append() end)

keymap("n", "<M-h>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

-- clear all console.logs from file
keymap(
  "n",
  "<leader>cL",
  [[:%s/console\.log([^)]*);//g<CR>]],
  { noremap = true, silent = true, desc = "Clear all console logs" }
)
-- sort tailwind classes
keymap("n", "<leader>ct", ":TailwindSort<CR>", { noremap = true, silent = true, desc = "Tailwind Sort" })
keymap(
  "n",
  "<leader>cx",
  ":TailwindSortOnSaveToggle<CR>",
  { noremap = true, silent = true, desc = "Tailwind Sort on save toggle" }
)

keymap("n", "<leader>n", ":NnnPicker<cr>", opts)

-- Zen Mode
keymap("n", "<leader>z", "<cmd>ZenMode<cr>", { noremap = true, silent = true })
