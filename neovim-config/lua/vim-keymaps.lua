-- vim-keymaps.lua

--
-- Keymaps
--

local opts = { noremap = true, silent = true }

-- leader keys
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

-- escape, remove search highlights, change 'x' behavior
vim.keymap.set("i", "jk", "<ESC>", opts)
vim.keymap.set("n", "<leader><space>", ":nohl<CR>")
vim.keymap.set("n", "x", '"_x', opts)

-- increment and decrement
vim.keymap.set("n", "+", '<C-A>')
vim.keymap.set("n", "-", '<C-X>')

-- select all
vim.keymap.set("n", "<C-A>", "gg<S-v>G")

-- buffer movement
vim.keymap.set("n", "[b", ":bprevious<CR>")
vim.keymap.set("n", "]b", ":bnext<CR>")
vim.keymap.set("n", "[B", ":bfirst<CR>")
vim.keymap.set("n", "]B", ":blast<CR>")

-- splits and split movement
vim.keymap.set("n", "<leader>v", ":vsplit<CR>", opts)
vim.keymap.set("n", "<leader>h", ":split<CR>", opts)

vim.keymap.set("n", "<C-J>", ":wincmd j<CR>", opts)
vim.keymap.set("n", "<C-K>", ":wincmd k<CR>", opts)
vim.keymap.set("n", "<C-H>", ":wincmd h<CR>", opts)
vim.keymap.set("n", "<C-L>", ":wincmd l<CR>", opts)

-- arrow keys
vim.keymap.set({ "n", "o" }, "<Up>", "ddkP", opts)
vim.keymap.set({ "n", "o" }, "<Down>", "ddp", opts)
vim.keymap.set({ "n", "o" }, "<Left>", "<Nop>", opts)
vim.keymap.set({ "n", "o" }, "<Right>", "<Nop>", opts)

-- vim.keymap.set({'i', 'n', 'o'}, '<Up>', '<Nop>')
-- vim.keymap.set({'i', 'n', 'o'}, '<Down>', '<Nop>')
-- vim.keymap.set({'i', 'n', 'o'}, '<Left>', '<Nop>')
-- vim.keymap.set({'i', 'n', 'o'}, '<Right>', '<Nop>')

