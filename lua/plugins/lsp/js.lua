local lspconfig = require('lspconfig')

lspconfig.ts_ls.setup({
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  on_attach = function(client, bufnr)
    -- Bạn có thể cấu hình keymap, lsp keybindings tại đây
    -- Ví dụ:
    -- local buf_map = function(mode, lhs, rhs)
    --   vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, { noremap = true, silent = true })
    -- end
  end,
  flags = {
    debounce_text_changes = 150,
  },
})
