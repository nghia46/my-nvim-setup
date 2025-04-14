return {
  'github/copilot.vim',
  config = function()
    -- Kích hoạt Copilot
    vim.g.copilot_enabled = 1
    vim.g.copilot_no_tab_map = 1 -- Để tránh xung đột với keymap mặc định của Tab

    -- Cấu hình Copilot, không cần `require('copilot')`
    -- Các tùy chọn khác có thể được thêm vào tùy theo nhu cầu
  end,
}
