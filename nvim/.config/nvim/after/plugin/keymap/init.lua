vim.api.nvim_set_keymap('n', 'Y', '"+y', { noremap = true })
vim.api.nvim_set_keymap('v', 'Y', '"+y', { noremap = true })
vim.api.nvim_set_keymap('n', 'yY', '^"+y$', { noremap = true })

vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>p', '<cmd>Telescope<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>gs', '<cmd>Neogit<CR>', { noremap = false })

