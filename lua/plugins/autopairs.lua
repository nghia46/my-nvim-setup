return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    require("nvim-autopairs").setup({
      check_ts = true, -- dùng Tree-sitter để thông minh hơn
    })
  end,
}
