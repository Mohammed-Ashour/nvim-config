-- Telescope remaps

local telescope_builtin = require 'telescope.builtin'
vim.keymap.set('n', '<C-p>', telescope_builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', telescope_builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescope_builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope_builtin.help_tags, { desc = 'Telescope help tags' })

-- Neo Tree remaps
vim.keymap.set('n', '<C-s>', ':Neotree filesystem reveal left<CR>', { desc = 'show file tree' })


-- LSP remaps

vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = "go to decleration" })

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "go to def" })

vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "hover the doc" })

vim.keymap.set('n', 'lr', vim.lsp.buf.rename, { desc = "rename" })

vim.keymap.set('n', '<leader>fr', function() vim.lsp.buf.format { async = true } end, { desc = "format" })

vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "code actions" })


-- Debugger remaps
dap = require("dap")
vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, { desc = "Add and remove breakpoint" })
vim.keymap.set('n', '<leader>dc', dap.continue, { desc = "continue the run" })
vim.keymap.set('n', '<F10>', function() dap.step_over() end)
vim.keymap.set('n', '<F11>', function() dap.step_into() end)
vim.keymap.set('n', '<F12>', function() dap.step_out() end)
