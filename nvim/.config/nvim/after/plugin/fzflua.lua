vim.keymap.set("n", "<c-P>", require('fzf-lua').files, { desc = "Fzf Files" })
vim.keymap.set("n", "<c-G>", require('fzf-lua').live_grep, { desc = "Fzf Grep Project" })
