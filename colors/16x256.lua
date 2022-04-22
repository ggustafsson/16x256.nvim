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
local fg_black = 16  -- #000000
local fg_white = 231 -- #ffffff

local fg_red     = 9  -- Bright Red
local fg_green   = 10 -- Bright Green
local fg_yellow  = 11 -- Bright Yellow
local fg_blue    = 12 -- Bright Blue
local fg_magenta = 13 -- Bright Magenta
local fg_cyan    = 14 -- Bright Cyan

local bg_grey = 242

local bg_red     = 1 -- Dark Red
local bg_green   = 2 -- Dark Green
local bg_yellow  = 3 -- Dark Yellow
local bg_blue    = 4 -- Dark Blue
local bg_magenta = 5 -- Dark Magenta
local bg_cyan    = 6 -- Dark Cyan

----------------------------
-- User Interface Objects --
----------------------------

hl("Search",     { ctermfg = fg_black, ctermbg = bg_yellow })
hl("SignColumn", { ctermfg = fg_cyan,  ctermbg = none })
hl("VertSplit",  { reverse = false })
hl("Visual",     { ctermfg = fg_white, ctermbg = bg_grey })

------------------
-- Text Objects --
------------------

hl("MatchParen", { ctermbg = none, underline = true })

---------------------
-- Plugin Specific --
---------------------

hl("NvimTreeFolderIcon", { ctermfg = fg_blue })
