# neovim-config
My personal neovim config

### Table of contents
---
- [Requirements](#requirements)
- [Installation](#installation)
- [Custom Keymaps](#custom-keymaps)
- [Languages](#languages)

### Requirements
---
  - git
  - neovim
  - fd/find
  - ripgrep

### Installation 
---
```bash
# Clone repository
git clone https://github.com/kesleymartins/neovim-config

mv neovim-config/ ~/.config/nvim 
```

- Setup icons
  - Download a patched font from [Nerd Fonts](https://www.nerdfonts.com)
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
```

### Languages
- lua
    ```lua
    :TSInstall lua
    :MasonInstall lua-language-server
    ```
