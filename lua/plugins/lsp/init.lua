return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("plugins.lsp.lua")
      require("plugins.lsp.csharp")
      require("plugins.lsp.css")
      require("plugins.lsp.html")
      require("plugins.lsp.js")
      require("plugins.lsp.python")
      require("plugins.lsp.rust")
    end,
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    }
  }
}
