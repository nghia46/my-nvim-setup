return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("conform").setup({
      format_on_save = {
        timeout_ms = 1000,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "black" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        json = { "prettier" },
        markdown = { "prettier" },
        sh = { "shfmt" },
        cs = { "csharpier" },
        go = { "gofmt" },
        rust = { "rustfmt" },
        yaml = { "prettier" },
        toml = { "taplo" },
        -- thêm các ngôn ngữ khác tại đây nếu cần
      },
    })
  end,
}

