--- Install lazy plugin manager
require("config.lazy")

--- mason plugin - installed via lazy
require("mason").setup()

--- nvim-transmitter - installed via lazy
require('nvim-treesitter').setup {
  install_dir = vim.fn.stdpath('data') .. '/site'
}

require('nvim-treesitter').install { 'rust', 'javascript', 'zig', 'lua', 'python' }

vim.opt.clipboard = "unnamedplus"

-- Appearance & Basics
vim.opt.background = "dark"
vim.opt.number = true
vim.opt.laststatus = 2
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.opt.incsearch = true
vim.opt.clipboard = "unnamedplus"
-- vim.opt.nostartofline = true
vim.opt.ruler = true
vim.opt.showmode = true
vim.opt.showcmd = true
vim.opt.title = true

-- Search settings
vim.opt.hlsearch = true
vim.opt.ignorecase = true

--- Set color scheme from tokyonight plugin
vim.cmd[[colorscheme tokyonight-moon]]

-- Highlight search matches
vim.api.nvim_set_hl(0, "CurSearch", { bg = "#ffaf00", fg = "#000000", ctermbg = 214, ctermfg = 16 })
vim.api.nvim_set_hl(0, "Search", { bg = "#6c6c6c", fg = "#ffffff", ctermbg = 242, ctermfg = 15 })

-- Keymaps (Ctrl+Backspace and Ctrl+Delete)
-- Note: Terminal emulators handle Ctrl+Backspace and Ctrl+Delete differently. 
-- In Neovim, <C-w> is built-in for deleting a word backward in insert mode.
vim.keymap.set('i', '<C-BS>', '<C-w>', { noremap = true })
vim.keymap.set('i', '<C-Delete>', '<C-o>dw', { noremap = true })


vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])


