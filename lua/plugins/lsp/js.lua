local lspconfig = require('lspconfig')

-- Cấu hình tsserver cho JavaScript và TypeScript
lspconfig.ts_ls.setup({
  on_attach = function(client, bufnr)
  end,
  flags = {
    debounce_text_changes = 150,
  },
})

