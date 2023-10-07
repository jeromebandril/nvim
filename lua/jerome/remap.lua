vim.g.mapleader = " "

-- disable because of nvimtree
--vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("x", "<leader>p", "\"_dP")

-- remove search highlight
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- nvimtree
 vim.keymap.set('n', '<leader>pv', ':NvimTreeToggle<CR>', {
    noremap = true
})
