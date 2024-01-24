# Neovim config 
My personal neovim config

## Table of contents
---
- [Dependencies](#dependencies)
- [Installation](#installation)
- [Keymaps](#keymaps)
- [environment-setup](#environment-setup)


## Dependencies 
---
### Fedora
```bash
sudo dnf install neovim git gcc ripgrep
```


## Installation 
---
```bash
# Clone repository
git clone https://github.com/kesleymartins/neovim-config ~/.config/nvim 
```
- Setup icons
  - Download a patched font from [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts/releases)
  - Set as your terminal font


## Keymaps
---
### Structure
```lua
MODE KEYMAP  -- DESCRIPTION
```

#### Customs
```lua
-- Window
n <Space>sv  -- Vertical Split
n <Space>sx  -- Close

-- Cursor
n <C-h>      -- Move to LEFT window
n <C-j>      -- Move to BOTTOM window
n <C-k>      -- Move to TOP window
n <C-l>      -- Move to RIGHT window

-- Buffers
n <S-h>      -- Move to previous
n <S-l>      -- Move to next 
n <Space>bd  -- delete

-- Exit modes
i kj         -- Insert
i lk         -- Visual

-- Clear search highlight
n <Space>nh

-- Redo
n U            
```

#### Plugins
```lua
-- Telescope
n <Space>ff    -- Open find files
n <Space>fb    -- Open live grep
n <Space>fb    -- Open buffers

-- Oil
n -            -- Open

-- Aerial
n <Space>a     -- Toggle
n {            -- Previous
n }            -- Next

-- Neogit
n <Space>ng    -- Open

-- LSP
n K            -- Info
n [d           -- Previous diagnostic
n ]d           -- Next diagnostic
n <Space>d     -- Open line diagnostic
n <Space>rn    -- Rename
n <Space>rs    -- Restart LSP
n/v <Space>ca  -- Code Actions

-- Nvim Completation
n <C-e>        -- Abort completation
n CR           -- Confirm 
```

## Environment Setup
---

### Rust
```lua
:TSInstall rust
:MasonInstall rust-analyzer
```

### Vue
```lua
:TSInstall vue
:MasonInstall vue-language-server
```

### JavaScript / Typescript
```lua
:TSInstall typescript
:MasonInstall typescript-language-server
```

### Svelte
```lua
:TSInstall svelte
:MasonInstall svelte-language-server
```

### YAML
```lua
:TSInstall yaml
```

### Lua
```lua
:TSInstall lua luadoc
:MasonInstall lua-language-server stylua
```

### Markdown
```lua
:TSInstall markdown 
:MasonInstall marksman
```

### Ruby
```lua
:TSInstall ruby
:MasonInstall solargraph
```

### PHP
```lua
:TSInstall php phpdoc
:MasonInstall phpactor phpmd phpcfb
```

### CSS / SASS / LESS
```lua
:TSInstall css scss
:MasonInstall css-lsp cssmodules-language-server 
```

### HTML
```lua
:TSInstall html
:MasonInstall html-lsp
```

### Go
```lua
:TSInstall go gomod gosum
:MasonInstall gopls 
```
