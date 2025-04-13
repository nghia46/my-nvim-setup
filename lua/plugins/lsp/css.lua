local lspconfig = require("lspconfig")

lspconfig.cssls.setup({
  cmd = { "vscode-css-language-server", "--stdio" },
  filetypes = { "css", "scss", "less" },
  capabilities = capabilities, -- nếu bạn có khai báo capabilities cho nvim-cmp
})
