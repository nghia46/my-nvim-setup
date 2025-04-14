return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",    -- Dependency cho popupmenu
    "nvim-lua/plenary.nvim",   -- Dependency cho các tiện ích
    "akinsho/toggleterm.nvim", -- Thêm toggleterm vào để chạy lệnh trong terminal
  },
  config = function()
    -- Cấu hình toggleterm (terminal bên dưới)
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<c-\>]], -- Keymap mở terminal
      direction = "horizontal", -- Terminal nằm ngang dưới màn hình
    })

    -- Tạo hàm để chạy lệnh :! trong terminal dưới
    vim.cmd([[
      command! -nargs=+ TermRun lua run_terminal(<f-args>)
    ]])

    function _G.run_terminal(cmd)
      local term = require("toggleterm.terminal").Terminal:new({
        cmd = cmd,
        hidden = true,            -- Không hiển thị ngay lập tức
        direction = "horizontal", -- Terminal nằm ngang
      })
      term:toggle()               -- Mở terminal để chạy lệnh
    end

    -- Cài đặt noice (Không dùng notify)
    require("noice").setup({
      cmdline = {
        enabled = true,
        view = "cmdline_popup", -- Giao diện đẹp cho cmdline
        format = {
          cmdline = { icon = "" },
          search_down = { icon = " " },
          search_up = { icon = " " },
        },
      },
      popupmenu = {
        enabled = true,
        backend = "nui", -- Popupmenu đẹp
      },
      -- Không dùng notify, chỉ dùng command line với popup
      messages = {
        enabled = true,
        view = "notify", -- Dù là "notify", nhưng sẽ không kích hoạt khi chạy lệnh !.
      },
      views = {
        cmdline_popup = {
          position = {
            row = "40%",
            col = "50%",
          },
          size = {
            width = 60,
            height = "auto",
          },
          border = {
            style = "rounded",
            padding = { 0, 1 },
          },
          win_options = {
            winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
          },
        },
      },
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        lsp_doc_border = true,
      },
    })
  end,
}
