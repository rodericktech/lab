--
-- Keymaps
--

-- leader keys
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

-- escape, remove search highlights, change 'x' behavior
vim.keymap.set('i', 'jk', '<ESC>')
vim.keymap.set('n', '<leader><space>', ':nohl<CR>')
vim.keymap.set('n', 'x', '"_x')

-- buffer movement
vim.keymap.set('n', '[b', ':bprevious<CR>')
vim.keymap.set('n', ']b', ':bnext<CR>')
vim.keymap.set('n', '[B', ':bfirst<CR>')
vim.keymap.set('n', ']B', ':blast<CR>')

-- splits and split movement
vim.keymap.set('n', '<leader>v', ':vsplit<CR>')
vim.keymap.set('n', '<leader>h', ':split<CR>')

vim.keymap.set('n', '<C-J>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-K>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-H>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-L>', ':wincmd l<CR>')

-- arrow keys
vim.keymap.set({'n', 'o'}, '<Up>', 'ddkP')
vim.keymap.set({'n', 'o'}, '<Down>', 'ddp')
vim.keymap.set({'n', 'o'}, '<Left>', '<Nop>')
vim.keymap.set({'n', 'o'}, '<Right>', '<Nop>')

-- vim.keymap.set({'i', 'n', 'o'}, '<Up>', '<Nop>')
-- vim.keymap.set({'i', 'n', 'o'}, '<Down>', '<Nop>')
-- vim.keymap.set({'i', 'n', 'o'}, '<Left>', '<Nop>')
-- vim.keymap.set({'i', 'n', 'o'}, '<Right>', '<Nop>')

