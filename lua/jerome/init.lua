require("jerome/remap")
require("jerome/plugins")
require("jerome/neovide-conf")

-- Enable clipboard sharing between Neovim and the system clipboard
vim.o.clipboard = "unnamedplus"

vim.cmd('set tabstop=4')
vim.cmd('set shiftwidth=4')
vim.wo.number = true

