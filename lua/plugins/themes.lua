return {
  -- { "navarasu/onedark.nvim", lazy = false },
  -- { "AlphaTechnolog/onedarker.nvim" },
  -- { "kjssad/quantum.vim" },
  -- { "sainnhe/everforest", lazy = true },
  {
    "olivercederborg/poimandres.nvim",
    lazy = true,
    priority = 1000,
    config = function()
      require("poimandres").setup({
        -- leave this setup function empty for default config
        -- or refer to the configuration section
        -- for configuration options
      })
    end,

    -- optionally set the colorscheme within lazy config
    init = function()
      vim.cmd("colorscheme poimandres")
    end,
  },
  {
    "lunarvim/darkplus.nvim",
    lazy = false,
    opts = {
      darkplus_style = "dark",
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    opts = {
      transparent_background = true,

      integrations = {
        alpha = true,
        cmp = true,
        flash = true,
        gitsigns = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        lsp_trouble = true,
        mason = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        noice = true,
        notify = true,
        neotree = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        which_key = true,
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    name = "tokyonight",
    transparent = true,
    require("tokyonight").setup({
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    }),
  },
  { "rose-pine/neovim", name = "rose-pine", lazy = true, priority = 1000 },
  {
    "loctvl842/monokai-pro.nvim",
    lazy = true,
    config = function()
      require("monokai-pro").setup({
        transparent_background = true,
        transparent_mode = true,
        -- background_clear = {
        --   -- "float_win",
        --   "toggleterm",
        --   "telescope",
        --   -- "which-key",
        --   "renamer",
        --   "notify",
        --   "nvim-tree",
        --   -- "neo-tree",
        --   "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
        -- },
      })
    end,
  },
  -- { "ofirgall/ofirkai.nvim", branch = "exp" },
  { "sainttttt/flesh-and-blood", lazy = true, priority = 1000 },
  { "lunarvim/synthwave84.nvim" },
  { "matsuuu/pinkmare", lazy = true, priority = 1000 },
  -- { "RRethy/nvim-base16" },
  { "rebelot/kanagawa.nvim" },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
  },
  {
    "sontungexpt/witch",
    priority = 1000,
    lazy = false,
    config = function(_, opts)
      require("witch").setup(opts)
    end,
  },
}
