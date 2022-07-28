-- 16x256.nvim - v0.0.1 WIP ALPHA BETA 2000
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
-- XXX: This will be hopefully be decommisioned after Nvim v9.0!
-- See roadmap: https://neovim.io/roadmap
--
-- Author: Göran Gustafsson (gustafsson.g at gmail.com)
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
  black = 16,  -- #000000
  grey  = 240,
  tan   = 180, -- #d7af87
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
hl("MatchParen", { ctermbg = "none", cterm = "underline" })
hl("Search",     { ctermfg = static.black, ctermbg = dark.yellow })
hl("SignColumn", { ctermfg = bright.cyan, ctermbg = "none" })
hl("VertSplit",  { cterm = "none", ctermfg = static.white })
hl("Visual",     { ctermfg = static.white, ctermbg = static.grey })

hl("Comment", { ctermfg = static.tan })
vim.cmd [[
  highlight! link Todo            Comment
  highlight! link vimCommentTitle Comment
]]

hl("CursorLineNr", { ctermfg = bright.red, cterm = "none" })
hl("LineNr",       { ctermfg = bright.black })

hl("DiffAdd",    { ctermfg = static.black, ctermbg = dark.green })
hl("DiffChange", { ctermfg = static.black, ctermbg = dark.yellow })
hl("DiffDelete", { ctermfg = static.black, ctermbg = dark.red })
hl("DiffText",   { ctermfg = static.black, ctermbg = dark.red })

hl("Error", { ctermfg = static.white, ctermbg = dark.red })
vim.cmd("highlight! link ErrorMsg Error")

hl("Folded", { ctermfg = bright.cyan, ctermbg = static.grey })
vim.cmd("highlight! link FoldColumn Folded")

hl("NonText", { ctermfg = bright.black })
vim.cmd("highlight! link SpecialKey NonText")

hl("SpellBad",   { ctermfg = static.white, ctermbg = dark.red })
hl("SpellCap",   { ctermfg = static.white, ctermbg = dark.blue })
hl("SpellLocal", { ctermfg = static.white, ctermbg = dark.cyan })
hl("SpellRare",  { ctermfg = static.white, ctermbg = dark.magenta })

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
