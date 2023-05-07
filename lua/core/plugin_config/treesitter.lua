require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'bash',
    'html',
    'javascript',
    'json',
    'vue',
    'lua',
    'ruby',
    'scss',
    'css',
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
