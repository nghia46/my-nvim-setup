local lspconfig = require("lspconfig")

lspconfig.omnisharp.setup {
  cmd = {
    "omnisharp", -- Thay bằng đường dẫn tuyệt đối thực tế
    "--languageserver",
    "--hostPID",
    tostring(vim.fn.getpid())
  },
  root_dir = lspconfig.util.root_pattern("*.sln", "*.csproj"),
  on_attach = function(client, bufnr)
    -- Enable diagnostic signs (e.g., error/warning symbols in the gutter)
    if client.server_capabilities.diagnosticProvider then
      vim.lsp.diagnostic.on_attach(client, bufnr)
    end

    -- Kiểm tra nếu server hỗ trợ document formatting
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ async = false })
        end,
        group = vim.api.nvim_create_augroup("FormatOnSave", { clear = true }),
      })
    end
  end,
  -- Cấu hình để ưu tiên .NET 8 và tối ưu OmniSharp
  settings = {
    RoslynExtensionsOptions = {
      EnableAnalyzersSupport = true,
    },
    Sdk = {
      IncludePrereleases = false, -- Tránh dùng SDK preview như .NET 9
    },
  },
}
