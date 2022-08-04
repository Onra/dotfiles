vim.api.nvim_set_keymap('n', '<leader>p', '<cmd>Telescope<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files hidden=true<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope file_browser<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fm', '<cmd>Telescope man_pages sections=ALL<CR>', { noremap = true })

