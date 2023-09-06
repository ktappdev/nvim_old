return {
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set("i", "<localleader><localleader>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true })
      vim.keymap.set("i", "<localleader>]", function()
        return vim.fn["codeium#CycleCompletions"](1)
      end, { expr = true })
    end,
  },
}
