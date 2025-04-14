return {
  "nvimdev/lspsaga.nvim",
  event = "LspAttach",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("lspsaga").setup({
      ui = {
        border = "rounded",
        title = true,
        winblend = 10,
        code_action = "💡",
      },
      hover = {
        max_width = 0.5,
      },
      lightbulb = {
        enable = false,
      },
    })

    -- Keymap cho Hover Documentation (hiển thị popup có màu)
    vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { desc = "LSP Hover", silent = true })

    -- Gợi ý: bạn có thể thêm các keymap khác cho rename, code action nếu muốn
    -- vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", { desc = "Rename Symbol" })
  end,
}
