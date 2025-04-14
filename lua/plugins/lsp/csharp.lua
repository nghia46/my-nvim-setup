local lspconfig = require("lspconfig")

lspconfig.omnisharp.setup({
  cmd = { "omnisharp", "--languageserver", "--hostPID", tostring(vim.fn.getpid()) },
  root_dir = lspconfig.util.root_pattern("*.csproj", "*.sln"),
  settings = {
    FormattingOptions = {
      EnableEditorConfigSupport = true,
    },
    RoslynExtensionsOptions = {
      EnableAnalyzersSupport = true,
    },
  },
  on_attach = function(client, bufnr)
    if client.server_capabilities.diagnostics then
      vim.lsp.diagnostic.on_attach(client, bufnr)
    end
    if client.server_capabilities.document_formatting then
      vim.cmd([[
        augroup FormatOnSave
          autocmd!
          autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil, 100)
        augroup END
      ]])
    end
    vim.keymap.set("n", "<leader>ra", vim.lsp.buf.references, { desc = "Find references" })
  end,
})
