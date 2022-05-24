local opts = { noremap = true, silent = true }
local map_key = vim.api.nvim_set_keymap

local function set_telescope_keybindings()
  map_key('n', '<C-p>', '<cmd>Telescope find_files<cr>', opts)
end

set_telescope_keybindings()
