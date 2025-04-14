-- Plugin Treesitter cho Neovim
-- Cung cấp hỗ trợ cú pháp nâng cao cho nhiều ngôn ngữ lập trình

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",   -- Cập nhật các parser Treesitter khi cài đặt
  config = function()
    require("nvim-ts-autotag").setup({
      ensure_installed = {
        "lua",
        "c_sharp",
        "html"
      },                                             -- Các ngôn ngữ mà bạn muốn hỗ trợ
      highlight = {
        enable = true,                               -- Bật tính năng tô sáng cú pháp
        additional_vim_regex_highlighting = false,   -- Tắt tô sáng regex để tránh xung đột với Treesitter
      },
      indent = {
        enable = true,   -- Bật tự động thụt lề
      },
      autotag = {
        enable = true,        -- Bật tính năng tự động thêm thẻ HTML/XML
      },
      sync_install = false,   -- Cài đặt parser đồng bộ
    })
  end,
}
