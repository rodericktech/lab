-- vim-options.lua

--
-- Vim General Options
--

-- colors
vim.cmd("set termguicolors")

-- line numbering (default to on)
vim.cmd("set number")
vim.cmd("set relativenumber")

-- tab stops
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("let g:markdown_recommended_style = 0")

-- search
vim.cmd("set hlsearch")
vim.cmd("set incsearch")

-- splits
vim.cmd("set splitbelow")
vim.cmd("set splitright")
