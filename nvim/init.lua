require("craftzdog.base")
require("craftzdog.highlights")
require("craftzdog.maps")
require("craftzdog.plugins")

vim.opt.clipboard:append({ "unnamedplus" })

-- win32yank for windows copy/paste
vim.g.clipboard = {
	name = "win32yank-wsl",
	copy = {
		["+"] = "win32yank -i --crlf",
		["*"] = "win32yank -i --crlf",
	},
	paste = {
		["+"] = "win32yank -o --crlf",
		["*"] = "win32yank -o --crlf",
	},
	cache_enable = 0,
}


