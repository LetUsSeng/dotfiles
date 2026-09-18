vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

vim.o.number = true
vim.o.relativenumber = true

vim.o.mouse = "a"
vim.o.showmode = false

vim.schedule(function()
  vim.o.clipboard = "unnamedplus"
end)

vim.o.breakindent = true
vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = "yes"

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.wrap = true
vim.opt.linebreak = true
vim.opt.textwidth = 0

vim.o.showtabline = 0

vim.o.updatetime = 250

vim.o.timeoutlen = 100

-- My Custom list
vim.opt.listchars = {
  space = "·",
  tab = "▷ ",
  trail = "•",
  eol = "↵",
  nbsp = "␣",
  extends = "⟩",
  precedes = "⟨",
}

-- vim.cmd([[set invlist]])
vim.cmd([[set tabstop=4]])
vim.o.inccommand = "split"

vim.o.cursorline = true

vim.o.scrolloff = 0

vim.o.confirm = true

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

vim.keymap.set("n", "<leader>m", "<cmd>set list!<CR>", { desc = "Toggle list characerts" })
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<C-A-Left>", "5<C-w><", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-A-Right>", "5<C-w>>", { desc = "Increase window width" })
vim.keymap.set("n", "<C-A-Up>", "2<C-w>+", { desc = "Increase window height" })
vim.keymap.set("n", "<C-A-Down>", "2<C-w>-", { desc = "Decrease window height" })
