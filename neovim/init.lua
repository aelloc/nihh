vim.opt.number = true
vim.opt.relativenumber = true

vim.g.mapleader = " "

vim.keymap.set({ "n", "v" }, "<leader>w", ":write<CR>")
vim.keymap.set({ "n", "v" }, "<leader>q", ":quit<CR>")
vim.keymap.set({ "n", "v" }, "<leader>e", ":Ex<CR>")
