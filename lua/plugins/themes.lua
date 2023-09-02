return {
  { "EdenEast/nightfox.nvim", transparent = true, opts = {
    transparent = true,
  } },
  { "glepnir/zephyr-nvim" },
  { "glepnir/oceanic-material" },
  { "glepnir/dashboard-nvim" },
  { "navarasu/onedark.nvim" },
  { "shaunsingh/nord.nvim" },
  { "sainnhe/sonokai" },
  { "sainnhe/gruvbox-material" },
  { "sainnhe/edge" },
  { "sainnhe/everforest" },
  {
    "lunarvim/darkplus.nvim",
    opts = {
      darkplus_style = "dark",
      transparent_mode = true,
    },
  },
  {
    "ellisonleao/gruvbox.nvim",

    opts = {
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true, -- invert background for search, diffs, statuslines and errors
      contrast = "", -- can be "hard", "soft" or empty string
      palette_overrides = {},
      overrides = {},
      dim_inactive = false,
      transparent_mode = true,
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
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
    "dracula/vim",
    name = "dracula",
  },
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    opts = {
      style = "night",
      transparent = true,
    },
  },
  { "bluz71/vim-nightfly-colors", name = "nightfly", priority = 1000 },
}
