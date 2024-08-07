# My Neovim Setup

Welcome to my personal and opinionated neovim repository! 🎉

## Preview

### Dashboard
<div style="text-align: center;">
    <img src="preview/dashboard.png" alt="Dashboard" width="600" height="340">
</div>

### Modes
<div style="text-align: center;">
    <img src="preview/modes.png" alt="Modes" width="500" height="250">
</div>

### Telescope/Bufferline
<div style="text-align: center;">
    <img src="preview/telescope.png" alt="Telescope/Bufferline" width="600" height="340">
</div>

## What's Inside?

### File tree of the configuration

<pre>
├─ init.lua
└─ lua/
    ├── config/
    │    └── lazy.lua
    ├── plugins/
    │    └── (all plugins)
    └── user/
         ├── keymaps.lua
         └── set.lua
</pre>

### Files description

Here's a quick overview of the plugins included in this repo:

  - **`autopairs.lua`**: Autocompletes parentheses and quotes.
  - **`bufferline.lua`**: Enhances the buffer line with a tab-like interface.
  - **`colorscheme.lua`**: Sets the color scheme for a pleasant visual experience.
  - **`dashboard.lua`**: Customizes the startup dashboard with a personalized touch.
  - **`lazygit.lua`**: Integrates LazyGit for a seamless git experience.
  - **`lualine.lua`**: Configures the status line for a clean and informative display.
  - **`netrw.lua`**: Tweaks the netrw file explorer settings.
  - **`telescope.lua`**: Sets up Telescope for powerful file and text searching.
  - **`treesitter.lua`**: Configures Tree-sitter for improved syntax highlighting.

Caution! `colorscheme.lua` by default uses my terminal color. if you want to change that, go to `colorscheme.lua` and change the `transparency = true` line. (neovim will look a bit uglier, but that's your problem, not mine!)

And also, the configuration files for neovim:

  - **`keymaps.lua`**: Custom key mappings for efficient navigation.
  - **`set.lua`**: General Neovim settings and options.

## Getting Started

To get up and running with this setup:

0. **necessary packages (according to your distro)**:
    ```bash
    sudo pacman -S lazygit
    sudo apt install lazygit
    sudo dnf install lazygit

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/gabriel-salmoria/nvim.git ~/.config/nvim

2. **Remove the unecessary files**:
   ```bash
    cd ~/.config/nvim
    rm -rf preview README.md .git

3. **Install Plugins: Open Neovim and run :Lazy sync (just press 's' in the dashboard) to install all the plugins specified in the configuration.**

4. **Done!**
