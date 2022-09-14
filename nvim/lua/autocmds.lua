-- prepare
local api = vim.api

-- auto recompile plugins after save plugins.lua
local plugins_group = api.nvim_create_augroup("BufWritePostPlugins", {clear = true})
api.nvim_create_autocmd("BufWritePost", {
	group = plugins_group,
	pattern = "manager.lua",
	command = "source <afile> | PackerSync",
	desc = "auto recompile plugins after save plugins.lua"
})

-- toggleterm
local toggleterm_group = vim.api.nvim_create_augroup("TermOpenToggleterm", {clear = true})
vim.api.nvim_create_autocmd("TermOpen", {
	group = toggleterm_group,
	pattern = "term://*",
	command = "lua vim.api.nvim_buf_set_keymap(0, 't', '<C-Up>', '<Cmd>wincmd k<CR>', {noremap = true})",
})

-- alpha
vim.cmd[[autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2]]
