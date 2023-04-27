require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'bash',
    'html',
    'javascript',
    'json',
    'lua',
    'ruby',
    'scss',
    'sql',
    'toml',
    'yaml',
  },
  highlight = { enable = true },
  indent = { enable = true },
  autotag = {
    enable = true,
    filetypes = {
      'html',
      'vue',
      'svelte',
      'xml'
    }
  }
})
