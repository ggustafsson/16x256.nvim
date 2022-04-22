-------------------
-- Initial Setup --
-------------------

vim.opt.background = "dark"
vim.opt.termguicolors = false

vim.cmd [[
  highlight clear
  syntax reset
]]

vim.g.colors_name = "16x256"

function hl(group, colors)
  vim.api.nvim_set_hl(0, group, colors)
end

---------------------
-- Color Variables --
---------------------
local black = 16  -- #000000
local grey  = 242
local white = 231 -- #ffffff

local dark_red     = 1 -- Dark Red
local dark_green   = 2 -- Dark Green
local dark_yellow  = 3 -- Dark Yellow
local dark_blue    = 4 -- Dark Blue
local dark_magenta = 5 -- Dark Magenta
local dark_cyan    = 6 -- Dark Cyan

local bright_red     = 9  -- Bright Red
local bright_green   = 10 -- Bright Green
local bright_yellow  = 11 -- Bright Yellow
local bright_blue    = 12 -- Bright Blue
local bright_magenta = 13 -- Bright Magenta
local bright_cyan    = 14 -- Bright Cyan

----------------------------
-- User Interface Objects --
----------------------------

hl("Search",     { ctermfg = black, ctermbg = dark_yellow })
hl("SignColumn", { ctermfg = bright_cyan, ctermbg = none })
hl("VertSplit",  { reverse = false })
hl("Visual",     { ctermfg = white, ctermbg = grey })

hl("CursorLineNr", { ctermfg = bright_red, underline = false })
hl("LineNr",       { ctermfg = grey })

------------------
-- Text Objects --
------------------

hl("MatchParen", { ctermbg = none, underline = true })

---------------------
-- Plugin Specific --
---------------------

hl("NvimTreeFolderIcon", { ctermfg = bright_blue })
