local keymap = vim.keymap
-- Toggle NvimTree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
-- Move between windown
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })
-- Lsp keymaps
keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { buffer = bufnr, desc = 'LSP: Code Action' })
keymap.set('n', 'H', vim.lsp.buf.hover, { buffer = bufnr, desc = 'LSP: Hover' })
keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr, desc = 'LSP: Go to Definition' })
-- Copilot keymaps
vim.api.nvim_set_keymap("i", "<C-l>", 'copilot#Accept("<CR>")', { expr = true, silent = true })
-- Telescope keymap
keymap.set('n', '<C-p>', '<cmd>Telescope find_files<CR>', { desc = 'Tìm file nhanh' })
keymap.set('n', '<C-f>', '<cmd>Telescope live_grep<CR>', { desc = 'Tìm trong nội dung file' })
