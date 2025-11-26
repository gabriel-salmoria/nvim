-- ~/.config/nvim/lua/plugins/telescope.lua

return {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()

        require('telescope').setup{ 
            sorting_strategy = "ascending",
            path_display = { "smart" },

            defaults = { 
                file_ignore_patterns = { 
                    "node_modules",
                    "pycache",
                    ".pdf",
                    ".jpg",
                    ".png",
                    ".mp4",
                    ".mp3",
                    ".out",
                    ".gz",
                }
            },

            pickers = {
                find_files = {
                    find_command = { "fd", "--type", "f", "--exclude", ".git" },
                },
            },
        }
    end


}

