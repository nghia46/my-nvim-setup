local lspconfig = require('lspconfig')

-- Cấu hình rust-analyzer cho Rust
lspconfig.rust_analyzer.setup({
  on_attach = function(client, bufnr)
    -- Tạo nhóm autocmd để format khi lưu
    local augroup = vim.api.nvim_create_augroup("LspFormatting", { clear = true })

    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ async = false })
        end,
      })
    end
  end,

  flags = {
    debounce_text_changes = 150,
  },
})

