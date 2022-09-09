local status, harpoon = pcall(require, "harpoon")
if not status then
	return
end

harpoon.setup({})

vim.keymap.set("n", ";h", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", { silent = true })
vim.keymap.set("n", "<leader>h", "<cmd>lua require('harpoon.mark').add_file()<CR>", { silent = true })
