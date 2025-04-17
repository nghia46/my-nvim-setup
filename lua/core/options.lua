local opt = vim.opt


opt.number = true
opt.relativenumber = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.termguicolors = true
-- leader key
vim.g.mapleader = " "

vim.diagnostic.config({
  virtual_text = true,     -- Hiển thị lỗi inline
  signs = true,            -- Hiển thị ký hiệu (như "E")
  update_in_insert = true, -- Không cập nhật lỗi khi đang gõ
  severity_sort = true,    -- Sắp xếp lỗi theo mức độ nghiêm trọng
})
