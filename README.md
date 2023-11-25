# LOAD-PROJECT-CONFIG

`load-project-config` is a plugin that can load neovim config in your projects.
Project path config by [project.nvim](https://github.com/ahmedkhalf/project.nvim),or by command `vim.fn.getcwd()`


# Requirements

- Neovim >= 0.5.0
- [project.nvim](https://github.com/ahmedkhalf/project.nvim)

# Features

This plugin will load custom command in your project path.

# Installation

[Lazy](https://github.com/folke/lazy.nvim)

```lua
{
    "load-project-config",
}
```

# Configuration

```lua
{
    -- project custom file name
    config_file_name = "project-commands.lua", 
    -- project custom dir path relative vim.fn.getcwd() or project root path
    config_file_path = ".project"
}

```
