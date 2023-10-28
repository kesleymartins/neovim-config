# Neovim config 
My personal neovim config

### Table of contents
---
- [Dependencies](#dependencies)
- [Installation](#installation)
- [Keymaps](#keymaps)
- [environment-setup](#environment-setup)



### Dependencies 
---

#### Fedora
```bash
sudo dnf install neovim git gcc ripgrep

```



### Installation 
---
```bash
# Clone repository
git clone https://github.com/kesleymartins/neovim-config ~/.config/nvim 
```

- Setup icons
  - Download a patched font from [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts/releases)
  - Set as your terminal font



### Keymaps
---

#### Structure
```lua
MODES KEYMAP COMMENT_DESCRIPTION
```

#### Customs
```lua
-- Move the cursor 
n <C-h>      -- one window to the left
n <C-j>      -- down one window 
n <C-k>      -- up one window
n <C-l>      -- one window to the right

-- Move lines
n/x <A-j>    -- Move one line down
n/x <A-k>    -- Move one line up
```

#### Plugins
```lua
-- Telescope
n <Space>ff    -- Open find files
n <Space>fb    -- Open live grep
n <Space>fb    -- Open buffers

-- Neo-tree 
n <Space>nc    -- Close
n <Space>nf    -- Focus

-- Aerial
n <Space>a     -- Toggle

-- Neogit
n <Space>ng    -- Open
```

#### Remaps
```lua
n U            -- Redo
```


### Environment Setup
---

##### Lua
```lua
:TSInstall lua luadoc
:MasonInstall lua-language-server stylua luacheck
```

##### Markdown
```lua
:TSInstall markdown 
:MasonInstall marksman
```

##### Ruby
```lua
:TSInstall ruby
:MasonInstall solargraph
```

##### PHP
```lua
:TSInstall php phpdoc
:MasonInstall phpactor phpmd phpcfb
```

##### CSS / SASS / LESS
```lua
:TSInstall css scss
:MasonInstall css-lsp cssmodules-language-server 
```

##### HTML
```lua
:TSInstall html
:MasonInstall html-lsp
```

##### Go
```lua
:TSInstall go gomod gosum
:MasonInstall gopls golangci-lint
```
