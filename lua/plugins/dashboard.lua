-- ~/.config/nvim/lua/plugins/dashboard.lua

return {
    'nvimdev/dashboard-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local db = require('dashboard')
        local lazy = require('lazy')

        -- Get the number of plugins loaded by lazy.nvim
        local function num_plugins()
            local plugins = lazy.stats().count
            return plugins
        end

        -- Transform the ASCII art
        local function transform(str)
            local lines = {}
            for i = 1, 2 do
                table.insert(lines, "")
            end
            for line in str:gmatch("[^\r\n]+") do
                table.insert(lines, line)
            end
            for i = 1, 2 do
                table.insert(lines, "")
            end
            return lines
        end


        local function get_footer()
            -- Check if misfortune command is available
            local handle = io.popen('command -v misfortune')
            local misfortune_installed = handle:read('*a'):match('%S+')
            handle:close()

            if misfortune_installed then
                -- Misfortune is installed, get a random line from it.
                local handle = io.popen('misfortune science wisdom art education computers politics law science -s')
                local result = handle:read('*a')
                handle:close()

                -- Remove any trailing newline characters
                result = result:gsub('\n', ' '):gsub('\r', '')
                return result
            else
                -- Misfortune is not installed, return a default string
                return 'The happiness of your life depends upon the quality of your thoughts - Marcus Aurelius'
            end
        end
        -- Define the art
        local art_string = [[

 /$$      /$$           /$$                                                   /$$                           /$$       /$$
| $$  /$ | $$          | $$                                                  | $$                          | $$      | $$
| $$ /$$$| $$  /$$$$$$ | $$  /$$$$$$$  /$$$$$$  /$$$$$$/$$$$   /$$$$$$       | $$$$$$$   /$$$$$$   /$$$$$$$| $$   /$$| $$
| $$/$$ $$ $$ /$$__  $$| $$ /$$_____/ /$$__  $$| $$_  $$_  $$ /$$__  $$      | $$__  $$ |____  $$ /$$_____/| $$  /$$/| $$
| $$$$_  $$$$| $$$$$$$$| $$| $$      | $$  \ $$| $$ \ $$ \ $$| $$$$$$$$      | $$  \ $$  /$$$$$$$| $$      | $$$$$$/ |__/
| $$$/ \  $$$| $$_____/| $$| $$      | $$  | $$| $$ | $$ | $$| $$_____/      | $$  | $$ /$$__  $$| $$      | $$_  $$     
| $$/   \  $$|  $$$$$$$| $$|  $$$$$$$|  $$$$$$/| $$ | $$ | $$|  $$$$$$$      | $$$$$$$/|  $$$$$$$|  $$$$$$$| $$ \  $$ /$$
|__/     \__/ \_______/|__/ \_______/ \______/ |__/ |__/ |__/ \_______/      |_______/  \_______/ \_______/|__/  \__/|__/
                                                                                                                         
        ]]
        


        local content_footer = get_footer()

        -- Actual setup
        db.setup({
            theme = 'doom',

            config = {
                header = transform(art_string),  -- Ensure art_string is not nil

                center = {
                    {
                        icon = ' ',
                        icon_hl = 'Title',
                        desc = ' find file',
                        desc_hl = 'Title',
                        key = 'f',
                        key_hl = 'Number',
                        key_format = ' %s',
                        action = function() vim.cmd('Telescope find_files') end
                    },
                    {
                        icon = ' ',
                        icon_hl = 'Title',
                        desc = ' new file',
                        desc_hl = 'Title',
                        key = 'n',
                        key_hl = 'Number',
                        key_format = ' %s',
                        action = function() vim.cmd('enew') end
                    },
                    {
                        icon = ' ',
                        icon_hl = 'Title',
                        desc = ' recent files',
                        desc_hl = 'Title',
                        key = 'r',
                        key_hl = 'Number',
                        key_format = ' %s',
                        action = function() vim.cmd('Telescope oldfiles') end
                    },
                    {
                        icon = ' ',
                        icon_hl = 'Title',
                        desc = ' sync',
                        desc_hl = 'Title',
                        key = 's',
                        key_hl = 'Number',
                        key_format = ' %s',
                        action = function() vim.cmd('Lazy sync') end
                    },
                    {
                        icon = ' ',
                        icon_hl = 'Title',
                        desc = ' quit',
                        desc_hl = 'Title',
                        key = 'q',
                        key_hl = 'Number',
                        key_format = ' %s',
                        action = function() vim.cmd('qa!') end
                    },
                    { desc = '' },
                    { desc = 'neovim loaded ' .. num_plugins() .. ' plugins'},
                    { desc = '' },
                    { desc = '' },

                },

                footer = { content_footer }, -- Set the footer with the captured output
            },
            hide = {
                statusline    -- hide statusline default is true
            }
        })
    end
}

