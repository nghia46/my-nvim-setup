local keymap = vim.keymap
-- Toggle NvimTree
keymap.set("n","<leader>e",":NvimTreeToggle<CR>",{desc = "Toggle NvimTree"})
-- Move between windown
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })
