require('toggleterm').setup{
	direction = "horizontal",

	-- usual keymap 
	open_mapping = [[<C-\>]],

	terminal_mappings = true,
	shading_factor = '2',
	insert_mappings = true,
}

local toggleterm_group = vim.api.nvim_create_augroup("TermOpenToggleterm", {clear = true})

vim.api.nvim_create_autocmd("TermOpen", {
	group = toggleterm_group,
	pattern = "term://*",
	command = "lua vim.api.nvim_buf_set_keymap(0, 't', '<C-Up>', '<Cmd>wincmd k<CR>', {noremap = true})",
})
