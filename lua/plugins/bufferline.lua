-- ~/.config/nvim/lua/plugins/bufferline.lua
return {
    'akinsho/bufferline.nvim',
    tag = 'v4.7.0', -- or a known working version
    dependencies = 'nvim-tree/nvim-web-devicons',
    lazy = true,
    event = "BufEnter",
    config = function()
        require('bufferline').setup {}
    end
}
