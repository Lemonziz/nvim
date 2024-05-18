vim.keymap.set("n", "<space>", "<Nop>", { silent = true })
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>stv", "<cmd>rightb vsplit +term<cr>", { desc = "Split terminal right" })
vim.keymap.set("n", "<leader>sth", "<cmd>rightb split +term<cr>", { desc = "Split terminal below" })
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make split equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<cr>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<cr>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<cr>", { desc = "Go to next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<cr>", { desc = "Go to previous tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<cr>", { desc = "Open current buffer in new tab" })

vim.keymap.set("n", "<leader>dm", "<cmd>make debug<cr>", { desc = "make debug" })
vim.keymap.set("n", "<leader>dc", "<cmd>make clean<cr>", { desc = "make clean" })

vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", { desc = "Exit terminal mode with <ESC>" })
--use C-j to switch to normal mode
--vim.keymap.set('n', '<C-j>', '<ESC>')
--vim.keymap.set('i', '<C-j>', '<ESC>')
--vim.keymap.set('v', '<C-j>', '<ESC>')
--vim.keymap.set('l', '<C-j>', '<ESC>')
--vim.keymap.set('x', '<C-j>', '<ESC>')
--vim.keymap.set('s', '<C-j>', '<ESC>')
--vim.keymap.set('c', '<C-j>', '<ESC>')
--vim.keymap.set('o', '<C-j>', '<ESC>')

--Makefile shortcuts
vim.keymap.set("n", "<leader>mk", '<cmd>make "%:r"<cr>', { desc = "make current file" })
vim.keymap.set("n", "<leader>md", '<cmd>make "%:r.debug"<cr>', { desc = "make current debug file" })
vim.keymap.set("n", "<leader>mc", "<cmd>make clean<cr>", { desc = "make clean the executable" })
vim.keymap.set("n", "<leader>ma", "<cmd>make<cr>", { desc = "make all" })

vim.keymap.set("n", "<leader>nh", "<cmd>nohl<cr>", { desc = "clear search highlight" })

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<cr>", "o<ESC>", { desc = "Insert line after current line" })
vim.keymap.set("n", "<leader><cr>", "O<ESC>", { desc = "Insert line before current line" })

vim.keymap.set("n", "<left>", '<cmd>echoe "Use h"<cr>')
vim.keymap.set("n", "<right>", '<cmd>echoe "Use l"<cr>')
vim.keymap.set("n", "<up>", '<cmd>echoe "Use k"<cr>')
vim.keymap.set("n", "<down>", '<cmd>echoe "Use j"<cr>')
