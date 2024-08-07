# nvim
My personal and opinionated neovim configuration. It's packed with few, but powerful plugins.


# My Neovim Setup

Welcome to my personal and opinionated neovim repository! 🎉

## What's Inside?

### file tree

├─ init.lua
└─ lua/
    ├── config/
    │    └── lazy.lua
    ├── plugins/
    │    └── (all plugins)
    └── user/
         ├── keymaps.lua
         └── set.lua

### Files description

Here's a quick overview of what's included in this repo:

  - **`autopairs.lua`**: Autocompletes parentheses and quotes.
  - **`bufferline.lua`**: Enhances the buffer line with a tab-like interface.
  - **`colorscheme.lua`**: Sets the color scheme for a pleasant visual experience.
  - **`dashboard.lua`**: Customizes the startup dashboard with a personalized touch.
  - **`lazygit.lua`**: Integrates LazyGit for a seamless git experience.
  - **`lualine.lua`**: Configures the status line for a clean and informative display.
  - **`netrw.lua`**: Tweaks the netrw file explorer settings.
  - **`telescope.lua`**: Sets up Telescope for powerful file and text searching.
  - **`treesitter.lua`**: Configures Tree-sitter for improved syntax highlighting.

  - **`keymaps.lua`**: Custom key mappings for efficient navigation.
  - **`set.lua`**: General Neovim settings and options.

## Getting Started

To get up and running with this setup:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/gabriel-salmoria/nvim.git ~/.config/nvim

2. **Install Plugins: Open Neovim and run :Lazy sync to install all the plugins specified in the configuration.**

3. **Done!**
