-- mason.lua
return {
  {
    "williamboman/mason.nvim", -- Cài đặt Mason
    cmd = "Mason",             -- Chỉ tải plugin khi gọi lệnh `:Mason`
    config = function()
      require('mason').setup() -- Cấu hình Mason
    end
  },

  {
    "williamboman/mason-lspconfig.nvim", -- Hỗ trợ tích hợp Mason và LSP
    after = "mason.nvim",                -- Cài đặt sau khi mason đã được tải
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "pyright",
          "ts_ls",
          "lua_ls",
          "omnisharp",
          "cssls",
          "html",
          "jsonls",
          "rust_analyzer",
        },
        automatic_installation = true,
      })
    end
  },
}
