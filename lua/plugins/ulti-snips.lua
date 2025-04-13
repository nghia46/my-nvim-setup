return {
  {
    "SirVer/ultisnips",
    dependencies = {
      "honza/vim-snippets", -- Snippet cho nhiều ngôn ngữ
    },
    init = function()
      vim.g.UltiSnipsExpandTrigger = "<tab>"       -- Kích hoạt bằng <tab>
      vim.g.UltiSnipsJumpForwardTrigger = "<c-j>"
      vim.g.UltiSnipsJumpBackwardTrigger = "<c-k>"
    end,
    event = "InsertEnter",
  },
}

