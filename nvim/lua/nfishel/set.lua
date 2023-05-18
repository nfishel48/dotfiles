vim.opt.nu = true
vim.opt.rnu = true
vim.opt.wrap = false
vim.opt.smartindent = true
vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]


