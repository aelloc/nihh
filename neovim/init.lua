vim.opt.number = true
vim.opt.relativenumber = true

vim.g.mapleader = " "

vim.keymap.set({ "n", "v" }, "<leader>u", ":update<CR> :source<CR>")
vim.keymap.set({ "n", "v" }, "<leader>w", ":write<CR>")
vim.keymap.set({ "n", "v" }, "<leader>q", ":quit<CR>")
vim.keymap.set({ "n", "v" }, "<leader>e", ":Neotree<CR>")

vim.keymap.set({ "n", "v" }, "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set({ "n", "v" }, "<leader>fw", ":Telescope live_grep<CR>")

vim.pack.add({
  {
    src = "https://github.com/nvim-neo-tree/neo-tree.nvim",
    version = vim.version.range("3"),
  },
  -- dependencies
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/MunifTanjim/nui.nvim",
  -- optional, but recommended
  "https://github.com/nvim-tree/nvim-web-devicons",
})

vim.pack.add({
  { src = 'https://github.com/nvim-lua/plenary.nvim' },
  { src = 'https://github.com/nvim-telescope/telescope.nvim' }
})

local telescope = require('telescope')
telescope.setup({})

vim.pack.add{
  { src = 'https://github.com/neovim/nvim-lspconfig' },
}

vim.lsp.enable("pyright")

vim.lsp.config('rust_analyzer', {
  settings = {
    ['rust-analyzer'] = {},
  },
})

vim.pack.add({
  { src = 'https://github.com/MysticalDevil/inlay-hints.nvim' },
})

require("inlay-hints").setup()
