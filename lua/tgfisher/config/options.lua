-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set:
--  https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.have_nerd_font = true
-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = "a"

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = "unnamedplus"

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- control relative line numbers
vim.o.relativenumber = false

-- highlight line of the cursor
vim.o.cursorline = false

-- column showing end of line
vim.o.colorcolumn = "79"

vim.g.autoformat = false

-- Vimtex settings
vim.g.vimtex_view_method = "skim" -- viewer method
vim.g.vimtex_view_general_viewer = "skim"
-- vim.g.vimtex_general_options = {"--unique file:@pdf\#src:@line@tex"}
vim.g.vimtex_copiler_method = "latexmk" -- default (latexrun <--is another option)
vim.g.vimtex_complete_enabled = 1

-- Conceal characters
vim.opt.conceallevel = 2

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = false # notermguicolors
vim.cmd.colorscheme("tokyonight-storm")
