local status_ok, configs = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
  return
end

configs.setup {
  ensure_installed = {
    'c',
    'lua',
    'go',
    'gomod',
    'gowork',
    'python',
    'css',
    'html',
    'http',
    'typescript',
    'javascript',
    'svelte',
    'vue',
    'json',
    'json5',
    'jsonc',
    'yaml',
    'graphql',
    'vim',
    'regex',
    'markdown',
    'bash',
    'fish',
    'bibtex',
    'latex',
    'dockerfile',
    'java',
    'kotlin',
    'make',
    'perl',
    'rasi',
    'rust',
  },

  sync_install = false,
  ignore_install = { '' },
  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true,
    disable = { '' },
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true, disable = { 'yaml' } },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}
