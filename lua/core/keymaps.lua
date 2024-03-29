vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


vim.opt.backspace = '2'
vim.opt.showmode = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('n', '<leader>h', ':nohlesearch<CR>')
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { silent = true })
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { silent = true })
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', { silent = true })

