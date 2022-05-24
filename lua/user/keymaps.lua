local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Maps key or key combination to another
-- one, or to a command.
-- @param mode - Vi mode for remap, see Modes below
-- @param target - Key or combo we want to press
-- @param source - Current key, combo, or command that does what we want
-- @param options - Options for remap, like { noremap = true, silent = true }
-- @example map_key('n', '<C-h>', '<C-w>h', opts)
--
-- Modes<cmd>
--   normal_mode = 'n',
--   insert_mode = 'i',
--   visual_mode = 'v',
--   visual_block_mode = 'x',
--   term_mode = 't',
--   command_mode = 'c',
local map_key = vim.api.nvim_set_keymap

local function reset_key(key)
  map_key('', key, '<Nop>', opts)
end

local function set_leader(leader_key)
  vim.g.mapleader = leader_key
  vim.g.maplocalleader = leader_key
end

local function remap_window_navigation_n(key)
  map_key('n', '<C-'..key..'>', '<C-w>'..key, opts)
end

local function remap_window_navigation_t(key)
  map_key('t', '<C-'..key..'>', '<C-\\><C-N><C-w>'..key, term_opts)
end

local function map_easier_window_navigation()
  keys = { 'h', 'j', 'k', 'l' }
  for _, key in pairs(keys) do
    remap_window_navigation_n(key)
    remap_window_navigation_t(key)
  end
end

local function remap_esc_terminal()
  map_key('t', '<Esc>', '<C-\\><C-N>', term_opts)
end

local function map_esc_disable_highlight_from_search()
  map_key('n', '<Esc>', '<cmd>noh<CR><Esc>', opts)
end

local function map_window_resize_with_arrows()
  map_key('n', '<C-Up>', '<cmd>resize -2<CR>', opts)
  map_key('n', '<C-Down>', '<cmd>resize +2<CR>', opts)
  map_key('n', '<C-Left>', '<cmd>vertical resize -2<CR>', opts)
  map_key('n', '<C-Right>', '<cmd>vertical resize +2<CR>', opts)
end

local function map_easier_buffer_navigation()
  map_key('n', '<S-l>', '<cmd>bnext<CR>', opts)
  map_key('n', '<S-h>', '<cmd>bprevious<CR>', opts)
end

local function reselect_indented_lines()
  map_key('v', '<', '<gv', opts)
  map_key('v', '>', '>gv', opts)
end

reset_key('<Space>')
set_leader(' ')  -- <Space>
map_easier_window_navigation()
map_window_resize_with_arrows()
map_easier_buffer_navigation()
reselect_indented_lines()
remap_esc_terminal()
map_esc_disable_highlight_from_search()
