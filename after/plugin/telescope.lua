local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.git_files, {})
-- requires ripgrep installed on the system
vim.keymap.set('n', '<C-s>', builtin.live_grep, {})

