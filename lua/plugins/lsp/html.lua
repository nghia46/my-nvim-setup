local lspconfig = require("lspconfig")

-- HTML
lspconfig.html.setup({
  cmd = { "vscode-html-language-server", "--stdio" },
})

