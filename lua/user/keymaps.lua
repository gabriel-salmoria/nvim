
local opts = { noremap = true, silent = true }

--- vim cmds ---

-- delete the current buffer
vim.api.nvim_set_keymap('n', '<leader>bd', '<cmd>bdelete<CR>', opts)

-- "d" doesn't copy into clipboard 
vim.keymap.set('n', 'd', '"_d', opts )
vim.keymap.set('n', 'dd', '"_dd', opts )
vim.keymap.set('n', 'd$', '"_d$', opts )
vim.keymap.set('n', 'd^', '"_d^', opts )
vim.keymap.set('n', 'd0', '"_d0', opts )
vim.keymap.set('n', 'dG', '"_dG', opts )
vim.keymap.set('x', 'd', '"_d', opts )
vim.keymap.set('x', 'D', '"_D', opts )

-- use pv for file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, opts)

-- creates new buffer 
vim.keymap.set('n', '<leader>bn', ':enew<CR>', opts)


--- bufferline cmds ---

-- use 1-9 to navigate the buffers
vim.api.nvim_set_keymap('n', '<leader>1', '<cmd>lua require("bufferline").go_to(1, true)<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>2', '<cmd>lua require("bufferline").go_to(2, true)<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>3', '<cmd>lua require("bufferline").go_to(3, true)<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>4', '<cmd>lua require("bufferline").go_to(4, true)<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>5', '<cmd>lua require("bufferline").go_to(5, true)<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>6', '<cmd>lua require("bufferline").go_to(6, true)<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>7', '<cmd>lua require("bufferline").go_to(7, true)<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>8', '<cmd>lua require("bufferline").go_to(8, true)<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>9', '<cmd>lua require("bufferline").go_to(9, true)<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>$', '<cmd>lua require("bufferline").go_to(-1, true)<CR>', opts)

--- telescope --- 

vim.keymap.set('n', '<leader><leader>', function()
    vim.cmd('Telescope find_files')
end)

vim.keymap.set('n', '<leader>fg', function()
    vim.cmd('Telescope live_grep')
end)

vim.keymap.set('n', '<leader>ps', function()
    local search = vim.fn.input("Grep > ")
    vim.cmd('Telescope grep_string search=' .. vim.fn.escape(search, ' '))
end)

