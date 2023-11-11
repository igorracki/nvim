local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<S-s>', builtin.find_files, {})
vim.keymap.set('n', '<S-g>', builtin.git_files, {})
vim.keymap.set('n', '<C-S-s>', function()
	builtin.grep_string({ search = vim.fn.input("Grep > " ) });
end)

