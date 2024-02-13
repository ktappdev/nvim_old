-- this file will auto instal the main lsp stuff from mason.
return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "typescript-language-server",
        "clangd",
        "rust-analyzer",
        "tailwindcss-language-server",
      },
    },
  },
}
