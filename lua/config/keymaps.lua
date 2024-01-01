-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
-- vim.g.maplocalleader("\\")
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED
require("toggleterm").setup({ -- size can be a number or function which is passed the current terminal
  function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  open_mapping = [[<c-\>]],
})

vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Last Telescope" }
)

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
vim.keymap.set("n", "<leader>a", function()
  harpoon:list():append()
end, { noremap = true, silent = true, desc = "Add file to Harpoon" })
vim.keymap.set("n", "<leader>h", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { noremap = true, silent = true, desc = "Show Harpoon list" })
-- clear all console.logs from file
keymap("n", "<leader>cL", [[:%s/console\.log([^)]*);//g<CR>]], { noremap = true, silent = true })
keymap("n", "<leader>ct", ":TailwindSort<CR>", { noremap = true, silent = true, desc = "Tailwind Sort" })
keymap(
  "n",
  "<leader>cx",
  ":TailwindSortOnSaveToggle<CR>",
  { noremap = true, silent = true, desc = "Tailwind Sort on save toggle" }
)
-- Map 'hh' to paste from yank register 0
-- keymap("n", "<localleader>d", '"_dd', { noremap = true, silent = true }) -- "_dw  -- in visual mode "_d
keymap("n", "<leader>n", ":NnnPicker<cr>", opts)

-- Redo last selected option
vim.api.nvim_set_keymap(
  "n",
  "<S-F6>",
  "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
    .. "<cmd>CompilerRedo<cr>",
  { noremap = true, silent = true }
)

-- Zen Mode
vim.api.nvim_set_keymap("n", "<leader>z", "<cmd>ZenMode<cr>", { noremap = true, silent = true })

-- Toggleterm keymaps
-- vim.api.nvim_set_keymap("n", "<leader>tt", ":ToggleTerm<cr>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>ta", ":ToggleTermToggleAll<cr>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>tn", ":ToggleTermSetName<cr>", { noremap = true, silent = true })
