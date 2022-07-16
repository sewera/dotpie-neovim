local options = {
  backup = false,
  cmdheight = 1,
  completeopt = { "menuone", "noselect" },
  conceallevel = 0,
  fileencoding = "utf-8",
  hlsearch = true,
  ignorecase = true,
  mouse = "a",
  pumheight = 10,
  showmode = false,
  showtabline = 2,
  smartcase = false,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  timeoutlen = 600,
  undofile = true,
  updatetime = 300,
  writebackup = false,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  cursorline = false,
  number = true,
  relativenumber = true,
  numberwidth = 4,
  signcolumn = "yes",
  wrap = false,
  scrolloff = 8,
  sidescrolloff = 8,
  guifont = "SauceCodePro Nerd Font:h12",
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

function disable_completion_messages()
  vim.opt.shortmess:append('c')
end

function enable_gui_colors_in_supported_terminal()
  if vim.fn.has('termguicolors') == 1 then
    vim.opt.termguicolors = true
  end
end

disable_completion_messages()
enable_gui_colors_in_supported_terminal()

