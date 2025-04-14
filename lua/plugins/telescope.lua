return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.6', -- hoặc bỏ nếu muốn luôn dùng version mới nhất
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('telescope').setup({
      defaults = {
        layout_config = {
          prompt_position = "top",
        },
        sorting_strategy = "ascending",
      }
    })
  end,
}
