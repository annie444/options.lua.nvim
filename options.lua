-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local options = {
  backup = false,         -- creates a backup file
  conceallevel = 2,       -- so that `` is visible in markdown files
  fileencoding = "utf-8", -- the encoding written to a file
  hidden = true,          -- required to keep multiple buffers and open multiple buffers
  ignorecase = true,      -- ignore case in search patterns
  mouse = "a",            -- allow the mouse to be used in neovim
  pumheight = 8,          -- pop up menu height
  pumblend = 10,          -- transparency of pop-up menu
  showmode = false,       -- we don't need to see things like -- INSERT -- anymore
  smartcase = true,       -- smart case
  smartindent = true,     -- make indenting smarter again
  splitbelow = true,      -- force all horizontal splits to go below current window
  splitright = true,      -- force all vertical splits to go to the right of current window
  swapfile = true,        -- creates a swapfile
  timeoutlen = 500,       -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,        -- enable persistent undo
  updatetime = 100,       -- faster completion (4000ms default)
  writebackup = false,    -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,       -- convert tabs to spaces
  shiftwidth = 2,         -- the number of spaces inserted for each indentation
  tabstop = 2,            -- insert 2 spaces for a tab
  cursorline = true,      -- highlight the current line
  number = true,          -- set numbered lines
  relativenumber = true,  -- set relative numbered lines
  numberwidth = 4,        -- set number column width to 4 {default 4}
  signcolumn = "yes",     -- always show the sign column, otherwise it would shift the text each time
  wrap = false,           -- display lines as one long line
  scrolloff = 8,          -- minimal number of columns to scroll horizontally.
  sidescrolloff = 8,      -- minimal number of screen columns
  lazyredraw = false,     -- Won't be redrawn while executing macros, register and other commands.
  termguicolors = true,   -- Enables 24-bit RGB color in the TUI
  foldenable = true,
  foldlevel = 99,
  foldlevelstart = 99,
  foldmethod = "indent",
  fillchars = { eob = " ", fold = " ", foldopen = "", foldsep = " ", foldclose = "", lastline = " " }, -- make EndOfBuffer invisible
  foldcolumn = "1",
  ruler = false,
  -- shell = vim.fn.executable "pwsh" and "pwsh" or "powershell",
  -- shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
  -- shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
  -- shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
  -- shellquote = "",
  -- shellxquote = "",
}

local global = {
  mkdp_auto_close = false, -- Don't Exit Preview When Switching Buffers
  mapleader = " ",         -- Set mapleader to space
  vscode_snippets_path = vim.fn.stdpath("config") .. "/snippets/vscode",
  lua_snippets_path = vim.fn.stdpath("config") .. "/lua/custom/lua_snippets",
  magma_image_provider = "kitty",
  magma_automatically_open_output = true,
  magma_wrap_output = false,
  magma_output_window_borders = false,
  magma_cell_highlight_group = "CursorLine",
  magma_save_path = vim.fn.stdpath("data") .. "/magma",
  vim_svelte_plugin_load_full_syntax = 1,
  python3_host_prog = "/opt/homebrew/Caskroom/mambaforge/base/envs/neovim/bin/python",
  ruby_host_prog = "/opt/homebrew/opt/ruby/bin/ruby",
  node_host_prog = "/Users/annieehler/.local/share/nvm/v20.13.1/bin/node",
  perl_host_prog = "/opt/homebrew/opt/perl/bin/perl",
  copilot_assume_mapped = true,
  vimwiki_list = { {
    path = '~/Documents/Notes',
    path_html = '~/Documents/Notes/HTML/',
    syntax = 'markdown',
    ext = '.md'
  } },
  vimwiki_url_maxsave = 0,
}

vim.opt.shortmess:append "Ac" -- Disable asking when editing file with swapfile.
vim.opt.whichwrap:append "<,>,[,],h,l"
vim.opt.iskeyword:append "-"
vim.lsp.set_log_level("ERROR")

set_option(options)
set_global(global)
