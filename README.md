# neovim-config
My personal neovim config

### Requirements
---
  - g++
  - git
  - neovim
  - fd find
  - ripgrep

### Setup
---
- Install packer
  - ```bash
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
     ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    ```

- Open neovim
- install plugins
  - ```bash
    :PackerInstall
    ```

- Setup icons
  - Download a patched font from [Nerd Fonts](https://www.nerdfonts.com)
  - Set as your default terminal font

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
