vim.keymap.set("n", "<space>", "<Nop>", { silent = true })
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>sh", "<C-w>v", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>sv", "<C-w>s", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make split equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
vim.keymap.set("n", "<leader>ww", "<cmd>set wrap<CR>", { desc = "Toggle wrap" })
vim.keymap.set("n", "<leader>nw", "<cmd>set nowrap<CR>", { desc = "Toggle nowrap" })

vim.keymap.set("n", "<leader>tc", "<cmd>tabnew<cr>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<cr>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<cr>", { desc = "Go to next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<cr>", { desc = "Go to previous tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<cr>", { desc = "Open current buffer in new tab" })

vim.keymap.set("n", "<leader>dm", "<cmd>make debug<cr>", { desc = "make debug" })
vim.keymap.set("n", "<leader>dc", "<cmd>make clean<cr>", { desc = "make clean" })

vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", { desc = "Exit terminal mode with <ESC>" })

vim.keymap.set(
	"n",
	"<leader>cm",
	"<cmd>!mkdir -p build && cd build && cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=on ..<cr>",
	{ desc = "cmake and generate config file" }
)
vim.keymap.set("n", "<leader>mb", "<cmd>!make -C ./build --no-print-directory all<cr>", { desc = "make current file" })
vim.keymap.set(
	"n",
	"<leader>mc",
	"<cmd>!make -C ./build --no-print-directory clean<cr>",
	{ desc = "make clean the executable" }
)
vim.keymap.set("n", "<leader>mr", "<cmd>!./build/main<cr>", { desc = "make run the executable" })
vim.keymap.set(
	"n",
	"<leader>ma",
	"<cmd>!make -C ./build --no-print-directory && ./build/main<cr>",
	{ desc = "run and build" }
)
vim.keymap.set(
	"n",
	"<leader>mt",
	"<cmd>!make -C ./build --no-print-directory && ./build/test<cr>",
	{ desc = "make test" }
)

vim.keymap.set("n", "<leader>nh", "<cmd>nohl<cr>", { desc = "clear search highlight" })

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<cr>", "o<ESC>", { desc = "Insert line after current line" })
vim.keymap.set("n", "<leader><cr>", "O<ESC>", { desc = "Insert line before current line" })

vim.keymap.set("n", "<left>", '<cmd>echoe "Use h"<cr>')
vim.keymap.set("n", "<right>", '<cmd>echoe "Use l"<cr>')
vim.keymap.set("n", "<up>", '<cmd>echoe "Use k"<cr>')
vim.keymap.set("n", "<down>", '<cmd>echoe "Use j"<cr>')
