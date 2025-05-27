return {
	"kylechui/nvim-surround",
	event = { "BufReadPre", "BufNewFile" },
	version = "*", -- Use for stability; omit to use `main` branch for the latest features
	config = true,
	-- use <CTRL-ENTER> to visual select text and then use <SHIFT-Symbol> to surround it
	-- Symbol can be any letters or punctuation, like `(`, `{`, `[`, `<`, `"`, `'`, etc.
	-- use <c-s> + symbol to change the surrounding symbol
	-- use <d-s> + symbol to delete the surrounding symbol
}
