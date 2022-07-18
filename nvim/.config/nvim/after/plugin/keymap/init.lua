vim.api.nvim_set_keymap('n', 'Y', '"+y', { noremap = true })
vim.api.nvim_set_keymap('v', 'Y', '"+y', { noremap = true })
vim.api.nvim_set_keymap('n', 'yY', '^"+y$', { noremap = true })

vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>p', '<cmd>Telescope<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files hidden=true<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope file_browser<CR>', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>gs', '<cmd>Neogit<CR>', { noremap = false })

-- Better window navigation
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = false })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = false })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = false })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = false })

vim.api.nvim_set_keymap('n', '<C-n>', '<cmd>NvimTreeToggle<CR>', { noremap = false })
