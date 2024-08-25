-- ~/.config/nvim/lua/plugins/lualine.lua

return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons', opt = true },
    lazy = true,
    event = {"BufRead", "BufNewFile", "WinEnter"},
	config = function()
		local colors = {
			base        = '#191724',
			surface     = '#1f1d2e',
			overlay     = '#1a102a', -- changed
			muted       = '#6e6a86',
			subtle      = '#908caa',
			text        = '#e0def4',
			love        = '#eb6f92',
			gold        = '#f6c177',
			pine        = '#9ccfd8',
			foam        = '#9ccfd8',
			iris        = '#c4a7e7'
		}

		local rose_pine = {
			normal = {
				a = {bg = colors.subtle, fg = colors.base, gui = 'bold'},
				b = {bg = colors.overlay, fg = colors.text},
				c = {bg = colors.overlay, fg = colors.subtle}
			},
			insert = {
				a = {bg = colors.foam, fg = colors.base, gui = 'bold'},
				b = {bg = colors.overlay, fg = colors.text},
				c = {bg = colors.overlay, fg = colors.text}
			},
			visual = {
				a = {bg = colors.iris, fg = colors.base, gui = 'bold'},
				b = {bg = colors.overlay, fg = colors.text},
				c = {bg = colors.overlay, fg = colors.text}
			},
			replace = {
				a = {bg = colors.pine, fg = colors.base, gui = 'bold'},
				b = {bg = colors.overlay, fg = colors.text},
				c = {bg = colors.overlay, fg = colors.text}
			},
			command = {
				a = {bg = colors.love, fg = colors.base, gui = 'bold'},
				b = {bg = colors.overlay, fg = colors.text},
				c = {bg = colors.overlay, fg = colors.text}
			},
			inactive = {
				a = {bg = colors.surface, fg = colors.subtle, gui = 'bold'},
				b = {bg = colors.surface, fg = colors.subtle},
				c = {bg = colors.surface, fg = colors.subtle}
			}
		}

		require('lualine').setup{
		options = {
			icons_enabled = true,
			theme = rose_pine,
			section_separators = { left = '', right = '' },
			component_separators = { left = '', right = '' },
			disabled_filetypes = {
				statusline = {},
				winbar = {},
			},
			ignore_focus = {},
			always_divide_middle = true,
			globalstatus = false,
			refresh = {
				statusline = 1000,
				tabline = 1000,
				winbar = 1000,
			}
		},
		sections = {
			lualine_a = { { 'mode', separator = { right = '', left = '' }, right_padding = 2 } },
			lualine_b = {'branch', 'diff', 'diagnostics'},
			lualine_c = {'filename'},
			lualine_x = {'encoding', 'fileformat', 'filetype'},
			lualine_y = {''},
			lualine_z = { { 'progress', separator = { right = '', left = '' } } },
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = {'filename'},
			lualine_y = {},
			lualine_z = { { 'progress', separator = { right = '', left = '' } } },

		},
		tabline = {},
		winbar = {},
		inactive_winbar = {},
		extensions = {}

}

end
}
