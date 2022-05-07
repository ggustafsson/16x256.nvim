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
local static = {
  black = 16,  -- #000000
  grey  = 240,
  white = 231, -- #ffffff
}

local dark = {
  black   = 0,
  red     = 1,
  green   = 2,
  yellow  = 3,
  blue    = 4,
  magenta = 5,
  cyan    = 6,
  white   = 7,
}

local bright = {
  black   = 8,
  red     = 9,
  green   = 10,
  yellow  = 11,
  blue    = 12,
  magenta = 13,
  cyan    = 14,
  white   = 15,
}

---------------------
-- Highlight Rules --
---------------------
hl("MatchParen", { ctermbg = none, underline = true })
hl("Search",     { ctermfg = static.black, ctermbg = dark.yellow })
hl("SignColumn", { ctermfg = bright.cyan, ctermbg = none })
hl("Todo",       { ctermfg = bright.cyan, underline = true })
hl("VertSplit",  { reverse = false })
hl("Visual",     { ctermfg = static.white, ctermbg = static.grey })

hl("CursorLineNr", { ctermfg = bright.red, underline = false })
hl("LineNr",       { ctermfg = bright.black })

hl("FoldColumn", { ctermfg = bright.cyan, ctermbg = static.grey })
hl("Folded",     { ctermfg = bright.cyan, ctermbg = static.grey })

hl("NonText",    { ctermfg = bright.black })
hl("SpecialKey", { ctermfg = bright.black })

--------------------
-- Filetype: diff --
--------------------
hl("diffAdded",   { ctermfg = bright.green })
hl("diffLine",    { ctermfg = bright.cyan })
hl("diffRemoved", { ctermfg = bright.red })

-- XXX: I can't figure out how to do this without vim.cmd().
vim.cmd [[
  highlight link diffFile      NONE
  highlight link diffIndexLine NONE
  highlight link diffSubname   NONE
]]

---------------------------
-- Plugin: nvim-tree.lua --
---------------------------
hl("NvimTreeFileDirty",  { ctermfg = bright.yellow })
hl("NvimTreeFolderIcon", { ctermfg = bright.blue })
