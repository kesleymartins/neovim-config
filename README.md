# neovim-config
My personal neovim config

### Requirements
---
  - g++
  - git
  - neovim

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
# Normal mode
<Space>nf       -- Focus NvimTree
<Space>nc       -- Close NvimTree
<Space>nr       -- Refresh NvimTree
<C-q>           -- Close Buffer
<A-up>          -- Move line up
<A-Down>        -- Move line down
<C-S-Right>     -- Go to next buffer
<C-S-Left>      -- Go to previous buffer
<Space>ff       -- Open Telescope file finder

# Visual mode
<A-up>          -- Move line up
<A-Down>        -- Move line down
```
  
