local status, nvmTree = pcall(require, "nvim-tree")
if not status then
	return
end

nvmTree.setup({
	sort_by = "case_sensitive",
	hijack_netrw = false,
	hijack_unnamed_buffer_when_opening = false,
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
			},
		},
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})

vim.keymap.set("n", "<F5>", "<cmd>NvimTreeToggle<cr>", { silent = true })
vim.keymap.set("n", "<F6>", "<cmd>NvimTreeFindFileToggle<cr>", { silent = true })
