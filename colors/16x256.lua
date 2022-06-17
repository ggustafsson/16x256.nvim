-------------------
-- Initial Setup --
-------------------
vim.opt.background = "dark"

vim.cmd [[
  highlight clear
  syntax reset
]]

vim.g.colors_name = "16x256"

-- Translate Lua table containing highlight group settings to valid Nvim
-- highlight command and execute it with vim.cmd().
--
-- Input:
--   hl("MatchParen", { ctermbg = "none", cterm = "underline" })
--
-- Output:
--   vim.cmd("highlight MatchParen ctermbg=none cterm=underline")
function hl(group, colors)
  local args = {}
  for key, value in pairs(colors) do
    local arg = string.format("%s=%s", key, value)
    table.insert(args, arg)
  end
  local string = table.concat(args, " ")
  local command = string.format("highlight %s %s", group, string)
  vim.cmd(command)
end

---------------------
-- Color Variables --
---------------------
local static = {
  black = 16,  -- #000000
  brown = 144, -- #afaf87
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
hl("Comment",    { ctermfg = static.brown })
hl("MatchParen", { ctermbg = "none", cterm = "underline" })
hl("Search",     { ctermfg = static.black, ctermbg = dark.yellow })
hl("SignColumn", { ctermfg = bright.cyan, ctermbg = "none" })
hl("Todo",       { ctermfg = bright.cyan, ctermbg = "none", cterm = "underline" })
hl("VertSplit",  { cterm = "none", ctermfg = static.white })
hl("Visual",     { ctermfg = static.white, ctermbg = static.grey })

hl("CursorLineNr", { ctermfg = bright.red, cterm = "none" })
hl("LineNr",       { ctermfg = bright.black })

hl("DiffAdd",    { ctermfg = static.white, ctermbg = dark.green })
hl("DiffChange", { ctermfg = static.white, ctermbg = dark.yellow })
hl("DiffDelete", { ctermfg = static.white, ctermbg = dark.red })
hl("DiffText",   { ctermfg = static.white, ctermbg = dark.red })

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

vim.cmd [[
  highlight link diffFile      NONE
  highlight link diffIndexLine NONE
  highlight link diffSubname   NONE
]]
