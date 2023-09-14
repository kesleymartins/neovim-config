# Neovim config 
My personal neovim config

### Table of contents
---
- [Dependencies](#dependencies)
- [Installation](#installation)
- [Custom Keymaps](#custom-keymaps)
- [Languages](#languages)



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
git clone https://github.com/kesleymartins/neovim-config

mv neovim-config/ ~/.config/nvim 
```

- Setup icons
  - Download a patched font from [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts/releases)
  - Set as your terminal font



### Custom Keymaps
---
```lua
-- Normal/Visual mode
<A-up>          -- Move line up
<A-Down>        -- Move line down

-- Telescope
<Space>ff       -- Open Telescope file finder
<Space>fg       -- Open Telescope live grep

-- Nvim Tree
<Space>nf       -- Focus NvimTree (open if closed)
<Space>nc       -- Close NvimTree

-- Diff view
<Space>do       -- Open Diff view 
<Space>dh       -- Open Diff view file history
<Space>dc       -- Close Diff view

-- Aerial
<Space>a        -- Toggle Aerial

-- Monoke
<C-b>           -- Toggle Monoke Buffer
```



### Languages
---

##### Lua
```lua
:TSInstall lua luadoc
:MasonInstall lua-language-server
```

##### Markdown
```lua
:TSInstall markdown 
:MasonInstall marksman
```

##### Ruby
```lua
:TSInstall lua
:MasonInstall solargraph
```

##### PHP
```bash
# requirements
php composer
ext-posix 

# run commands inside neovim
:TSInstall php
:MasonInstall phpactor
```
