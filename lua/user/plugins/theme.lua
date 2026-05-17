local status_ok, catppuccin = pcall(require, 'catppuccin')
if not status_ok then
  return
end

require("catppuccin").setup({
  integrations = {
    lualine = true,
  }
})

vim.cmd.colorscheme "catppuccin-mocha"
