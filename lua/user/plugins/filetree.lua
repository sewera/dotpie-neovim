local status_ok, nvimtree = pcall(require, 'nvim-tree')
if not status_ok then
  return
end

nvimtree.setup {
  hijack_cursor = true,
}

local function map_gf_to_filetree()
  opts = { noremap = true, silent = true }
  map_key = vim.api.nvim_set_keymap
  map_key('n', 'gf', ':NvimTreeToggle<CR>', opts)
end

map_gf_to_filetree()
