vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.vb = false
vim.opt.undofile = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.compatible = false
vim.opt.number = true
vim.opt.hidden = true
vim.opt.relativenumber = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.wrap = false
vim.opt.clipboard:append("unnamedplus")
vim.opt.mouse:append({ a = true })
vim.opt.shortmess:append({ I = true })
vim.opt.laststatus = 2
vim.opt.backspace = { "indent", "eol", "start" }
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

vim.cmd("let g:netrw_liststyle = 3")
vim.cmd("au! BufNewFile,BufRead *.tpp set filetype=cpp")
