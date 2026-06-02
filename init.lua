vim.g.mapleader = "," -- space as leader key
vim.g.maplocalleader = ";" -- backslash as local leader

vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20" -- block in normal, bar in insert, underline in replace

require("config.options")
require("config.keymaps")
require("config.lazy")
