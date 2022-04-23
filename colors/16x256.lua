-------------------
-- Initial Setup --
-------------------
vim.opt.background = "dark"

-- XXX: I can't figure out how to do this without vim.cmd().
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
local grey  = 240
local white = 231 -- #ffffff

local dark_black   = 0
local dark_red     = 1
local dark_green   = 2
local dark_yellow  = 3
local dark_blue    = 4
local dark_magenta = 5
local dark_cyan    = 6
local dark_white   = 7

local bright_black   = 8
local bright_red     = 9
local bright_green   = 10
local bright_yellow  = 11
local bright_blue    = 12
local bright_magenta = 13
local bright_cyan    = 14
local bright_white   = 15

---------------------
-- Highlight Rules --
---------------------
hl("MatchParen", { ctermbg = none, underline = true })
hl("Search",     { ctermfg = black, ctermbg = dark_yellow })
hl("SignColumn", { ctermfg = bright_cyan, ctermbg = none })
hl("Todo",       { ctermfg = bright_cyan, underline = true })
hl("VertSplit",  { reverse = false })
hl("Visual",     { ctermfg = white, ctermbg = grey })

hl("CursorLineNr", { ctermfg = bright_red, underline = false })
hl("LineNr",       { ctermfg = bright_black })

hl("NonText",    { ctermfg = bright_black })
hl("SpecialKey", { ctermfg = bright_black })

--------------------
-- Filetype: diff --
--------------------
hl("diffAdded",   { ctermfg = bright_green })
hl("diffLine",    { ctermfg = bright_cyan })
hl("diffRemoved", { ctermfg = bright_red })

-- XXX: I can't figure out how to do this without vim.cmd().
vim.cmd [[
  highlight link diffFile      NONE
  highlight link diffIndexLine NONE
  highlight link diffSubname   NONE
]]

---------------------------
-- Plugin: nvim-tree.lua --
---------------------------
hl("NvimTreeFolderIcon", { ctermfg = bright_blue })
