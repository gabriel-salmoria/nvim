
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


-- my own scripts --

-- rip


--- bufferline cmds ---

-- use 1-9 to navigate the buffers
-- vim.api.nvim_set_keymap('n', '<leader>1', '<cmd>lua require("bufferline").go_to(1, true)<CR>', opts)

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


--- vimtex ---

-- Define a global function to open VimTeX errors in a full window
function _G.open_vimtex_errors()
  vim.cmd('botright copen')
  vim.cmd('wincmd J')
  vim.cmd('resize 999')
end

-- Map a key to call the global function
vim.api.nvim_set_keymap('n', '<leader>w', [[:lua _G.open_vimtex_errors()<CR>]], opts)

-- Expand or jump forward in UltiSnips
vim.keymap.set('i', '<C-j>', function()
  if vim.fn.pumvisible() == 1 then
    return '<C-n>'
  else
    return vim.fn['UltiSnips#ExpandSnippetOrJump']()
  end
end, opts)

-- Jump backward in UltiSnips
vim.keymap.set('i', '<C-k>', function()
  if vim.fn.pumvisible() == 1 then
    return '<C-p>'
  else
    return vim.fn['UltiSnips#JumpBackwards']()
  end
end, opts)
