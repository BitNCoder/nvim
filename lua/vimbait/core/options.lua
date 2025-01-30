-- settings
vim.o.rnu = true -- relative line numbers
vim.o.nu = true -- line numbers
vim.o.so = 8 -- scroll offset
vim.o.shiftwidth = 4 -- tabwidth
vim.o.softtabstop = 4 -- tabwidth
vim.o.wrap = false -- turn off line wrapping

-- Configs
vim.filetype.add({pattern = {[".*/hypr/.*%.conf"] = "hyprlang"}})
