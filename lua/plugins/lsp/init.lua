return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("plugins.lsp.lua")
      require("plugins.lsp.csharp")
      require("plugins.lsp.css")
      require("plugins.lsp.html")
      require("plugins.lsp.js")
    end,
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    }
  }
}
