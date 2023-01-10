-- prepare
local keymap = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

keymap('', '<Space>', '<Nop>', opt)
vim.g.mapleader = " "

-- switch buffer
keymap('n', '<S-Right>', ':bnext<CR>', opt)
keymap('n', '<S-Left>', ':bprevious<CR>', opt)

-- buffer close
keymap('n', '<S-q>', ':bdelete<CR>', opt)

-- switch window
keymap('n', '<C-Left>', ':wincmd h<CR>', opt)
keymap('n', '<C-Right>', ':wincmd l<CR>', opt)
keymap('n', '<C-Up>', ':wincmd k<CR>', opt)
keymap('n', '<C-Down>', ':wincmd j<CR>', opt)

-- window close
keymap('n', '<C-q>', ':quit<CR>', opt)

-- move window
keymap('n', '<S-C-Down>', ':wincmd J<CR>', opt)
keymap('n', '<S-C-Up>', ':wincmd K<CR>', opt)
keymap('n', '<S-C-Right>', ':wincmd L<CR>', opt)
keymap('n', '<S-C-Left>', ':wincmd H<CR>', opt)

-- leave neovim
keymap('n', '<S-C>q', ':quitall!>', opt)

-- telescope
keymap('n', '<Leader>tf', ':Telescope find_files<CR>', opt)
keymap('n', '<Leader>to', ':Telescope oldfiles<CR>', opt)

-- nvim-tree
keymap('n', '<Leader>n', ':NvimTreeToggle<CR>', opt)

-- nvim-comment
keymap('n', '<Leader>c', ':CommentToggle<CR>', opt)
keymap('v', '<Leader>c', ':CommentToggle<CR>', opt)

-- markdown preview
keymap('n', '<Leader>m', ':Glow!<CR>', opt)

-- git
keymap('n', '<Leader>gs', ':Gitsigns stage_hunk<CR>', opt)
keymap('n', '<Leader>gu', ':Gitsigns undo_stage_hunk<CR>', opt)
keymap('n', '<Leader>gr', ':Gitsigns reset_hunk<CR>', opt)
keymap('n', '<Leader>gp', ':Gitsigns preview_hunk<CR>', opt)

keymap('n', '<Leader>gg', ':LazyGit<CR>', opt)

-- lsp
keymap('n', '<Leader>lr', ":lua vim.lsp.buf.rename()<CR>", opt);
keymap('n', '<Leader>lh', ":lua vim.lsp.buf.hover()<CR>", opt);
keymap('n', '<Leader>ld', ":lua vim.lsp.buf.definition()<CR>", opt);

