local status_ok, tokyonight = pcall(require, 'tokyonight')
if not status_ok then
  return
end

vim.g.tokyonight_style = "storm"
vim.g.tokyonight_italic_functions = true
vim.cmd [[colorscheme tokyonight]]
