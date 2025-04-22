-- remaps

-- resize window using <ctrl> arrow keys
vim.keymap.set('n', '<C-Up>', '<cmd>resize +2<cr>', { desc = 'Increase Window Height' })
vim.keymap.set('n', '<C-Down>', '<cmd>resize -2<cr>', { desc = 'Decrease Window Height' })
vim.keymap.set('n', '<C-Left>', '<cmd>vertical resize -2<cr>', { desc = 'Decrease Window Width' })
vim.keymap.set('n', '<C-Right>', '<cmd>vertical resize +2<cr>', { desc = 'Increase Window Width' })

-- copy line up and down
vim.keymap.set('n', '<C-k>', "<cmd>t-<cr>", { desc = 'Copy current line up' })
vim.keymap.set('n', '<C-j>', "<cmd>t.<cr>", { desc = 'Copy current line down' })

-- move line up and down
vim.keymap.set('n', '<C-A-k>', "<cmd>m--<cr>", { desc = 'Move current line up' })
vim.keymap.set('n', '<C-A-j>', "<cmd>m+<cr>", { desc = 'Move current line down' })
