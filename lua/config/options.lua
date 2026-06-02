-- UI
vim.opt.number = true         -- show absolute line number on current line
vim.opt.relativenumber = true -- show relative line numbers for other lines
vim.opt.cursorline = true     -- highlight the line the cursor is on
vim.opt.signcolumn = "yes"    -- always show sign column to avoid layout shift
vim.opt.wrap = false          -- disable line wrapping
vim.opt.scrolloff = 8         -- keep 8 lines visible above/below cursor
vim.opt.sidescrolloff = 8     -- keep 8 columns visible left/right of cursor
vim.opt.termguicolors = true  -- enable 24-bit RGB colors
vim.opt.laststatus = 3        -- single global statusline instead of one per window
vim.opt.showtabline = 2       -- always show tabline
vim.opt.showmode = false      -- hide mode indicator (redundant with a statusline plugin)
vim.opt.colorcolumn = "0"     -- vertical ruler at column 100

-- Editing
vim.opt.expandtab = true   -- insert spaces when pressing Tab
vim.opt.tabstop = 2        -- number of spaces a Tab character counts for
vim.opt.shiftwidth = 2     -- number of spaces used for each indent step
vim.opt.softtabstop = 2    -- spaces inserted/removed when pressing Tab/Backspace
vim.opt.smartindent = true -- auto-indent new lines based on syntax
vim.opt.autoindent = true  -- copy indent from current line when starting a new line

-- Search
vim.opt.hlsearch = false  -- don't keep matches highlighted after search
vim.opt.incsearch = true  -- highlight matches as you type the search pattern
vim.opt.ignorecase = true -- case-insensitive search by default
vim.opt.smartcase = true  -- switch to case-sensitive when pattern contains uppercase

-- Files
vim.opt.undofile = true  -- persist undo history across sessions
vim.opt.swapfile = false -- don't create swap files
vim.opt.backup = false   -- don't create backup files before overwriting

-- Splits
vim.opt.splitright = true -- open vertical splits to the right
vim.opt.splitbelow = true -- open horizontal splits below

-- Performance
vim.opt.updatetime = 250 -- ms of inactivity before writing swap and triggering CursorHold
vim.opt.timeoutlen = 1000 -- ms to wait for a mapped key sequence to complete

-- Clipboard
vim.opt.clipboard = "unnamedplus" -- use system clipboard for all yank/paste operations

-- Mouse
vim.opt.mouse = "a" -- enable mouse support in all modes

-- Whitespace visibility
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Wrapped line indentation (useful if wrap is ever enabled)
vim.opt.breakindent = true

-- Live preview of :s substitutions in a split
vim.opt.inccommand = "split"
