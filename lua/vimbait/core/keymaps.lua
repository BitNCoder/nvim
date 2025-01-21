-- remaps

-- copy line up and down
vim.keymap.set('n', '<C-k>', "<cmd>t-<cr>")
vim.keymap.set('n', '<C-j>', "<cmd>t.<cr>")

-- move line up and down
vim.keymap.set('n', '<C-A-k>', "<cmd>m--<cr>")
vim.keymap.set('n', '<C-A-j>', "<cmd>m+<cr>")
