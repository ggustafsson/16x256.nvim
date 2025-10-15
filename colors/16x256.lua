-- 16x256.nvim - v0.0.4 WIP ALPHA BETA 2000
--
--     $$\   $$$$$$\             $$$$$$\  $$$$$$$\   $$$$$$\
--   $$$$ | $$  __$$\           $$  __$$\ $$  ____| $$  __$$\
--   \_$$ | $$ /  \__|$$\   $$\ \__/  $$ |$$ |      $$ /  \__|
--     $$ | $$$$$$$\  \$$\ $$  | $$$$$$  |$$$$$$$\  $$$$$$$\
--     $$ | $$  __$$\  \$$$$  / $$  ____/ \_____$$\ $$  __$$\
--     $$ | $$ /  $$ | $$  $$<  $$ |      $$\   $$ |$$ /  $$ |
--   $$$$$$\ $$$$$$  |$$  /\$$\ $$$$$$$$\ \$$$$$$  | $$$$$$  |
--   \______|\______/ \__/  \__|\________| \______/  \______/
--
-- Nvim colorscheme that aims to be minimal, defaultish and wonderfully boring.
--
-- Author: Göran Gustafsson <gustafsson.g@gmail.com>
-- License: BSD 3-Clause

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
  black  = 16,  -- #000000
  grey27 = 238, -- #444444
  grey35 = 240, -- #585858
  tan    = 180, -- #d7af87
  white  = 231, -- #ffffff
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
hl("Comment",      { ctermfg = static.tan })
hl("Error",        { ctermfg = static.white, ctermbg = dark.red })
hl("Folded",       { ctermfg = bright.cyan, ctermbg = static.grey27 })
hl("MatchParen",   { ctermbg = "none", cterm = "underline" })
hl("NonText",      { ctermfg = bright.black })
hl("Search",       { ctermfg = static.black, ctermbg = dark.yellow })
hl("SignColumn",   { ctermfg = bright.cyan, ctermbg = "none" })
hl("StatusLineNC", { ctermfg = static.black, ctermbg = 248, cterm = "none" })
hl("VertSplit",    { ctermfg = static.white, cterm = "none" })
hl("Visual",       { ctermfg = static.white, ctermbg = static.grey35 })

hl("CursorLineNr", { ctermfg = bright.red, cterm = "none" })
hl("LineNr",       { ctermfg = bright.black })

hl("DiffAdd",    { ctermfg = static.black, ctermbg = dark.green })
hl("DiffChange", { ctermfg = static.black, ctermbg = dark.yellow })
hl("DiffDelete", { ctermfg = static.black, ctermbg = dark.red })
hl("DiffText",   { ctermfg = static.black, ctermbg = dark.red })

hl("Pmenu",    { ctermfg = static.white, ctermbg = static.grey27 })
hl("PmenuSel", { ctermfg = static.black, ctermbg = bright.yellow })

hl("SpellBad",   { ctermfg = static.white, ctermbg = dark.red })
hl("SpellCap",   { ctermfg = static.white, ctermbg = dark.magenta })
hl("SpellLocal", { ctermfg = static.white, ctermbg = dark.magenta })
hl("SpellRare",  { ctermfg = static.white, ctermbg = dark.magenta })

vim.cmd [[
  highlight! link ErrorMsg   Error
  highlight! link FoldColumn Folded
  highlight! link SpecialKey NonText

  highlight! link Todo            Comment
  highlight! link vimCommentTitle Comment
]]

--------------------
-- Filetype: diff --
--------------------
hl("diffAdded",   { ctermfg = bright.green })
hl("diffLine",    { ctermfg = bright.cyan })
hl("diffRemoved", { ctermfg = bright.red })

vim.cmd [[
  highlight! link diffFile      NONE
  highlight! link diffIndexLine NONE
  highlight! link diffSubname   NONE
]]
