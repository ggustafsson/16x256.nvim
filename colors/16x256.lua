-- 16x256.nvim - v0.0.5 WIP ALPHA BETA 2000
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
vim.opt.termguicolors = false
vim.cmd [[
  highlight clear
  syntax reset
]]
vim.g.colors_name = "16x256"

---------------------
-- Color Variables --
---------------------
local static = {
  black  = 16,  -- #000000
  grey27 = 238, -- #444444
  grey35 = 240, -- #585858
  grey66 = 248, -- #a8a8a8
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
vim.cmd.highlight("Comment",      "ctermfg="..static.tan)
vim.cmd.highlight("Error",        "ctermfg="..static.white, "ctermbg="..dark.red)
vim.cmd.highlight("Folded",       "ctermfg="..bright.cyan,  "ctermbg="..static.grey27)
vim.cmd.highlight("MatchParen",   "ctermbg=none",           "cterm=underline")
vim.cmd.highlight("NonText",      "ctermfg="..bright.black)
vim.cmd.highlight("Search",       "ctermfg="..static.black, "ctermbg="..dark.yellow)
vim.cmd.highlight("SignColumn",   "ctermfg="..bright.cyan,  "ctermbg=none")
vim.cmd.highlight("StatusLineNC", "ctermfg="..static.black, "ctermbg="..static.grey66, "cterm=none")
vim.cmd.highlight("VertSplit",    "ctermfg="..static.white, "cterm=none")
vim.cmd.highlight("Visual",       "ctermfg="..static.white, "ctermbg="..static.grey35)

vim.cmd.highlight("CursorLineNr", "ctermfg="..bright.red,  "cterm=none")
vim.cmd.highlight("LineNr",       "ctermfg="..bright.black)

vim.cmd.highlight("DiffAdd",    "ctermfg="..static.black, "ctermbg="..dark.green)
vim.cmd.highlight("DiffChange", "ctermfg="..static.black, "ctermbg="..dark.yellow)
vim.cmd.highlight("DiffDelete", "ctermfg="..static.black, "ctermbg="..dark.red)
vim.cmd.highlight("DiffText",   "ctermfg="..static.black, "ctermbg="..dark.red)

vim.cmd.highlight("Pmenu",    "ctermfg="..static.white, "ctermbg="..static.grey27)
vim.cmd.highlight("PmenuSel", "ctermfg="..static.black, "ctermbg="..bright.yellow)

vim.cmd.highlight("SpellBad",   "ctermfg="..static.white, "ctermbg="..dark.red)
vim.cmd.highlight("SpellCap",   "ctermfg="..static.white, "ctermbg="..dark.magenta)
vim.cmd.highlight("SpellLocal", "ctermfg="..static.white, "ctermbg="..dark.magenta)
vim.cmd.highlight("SpellRare",  "ctermfg="..static.white, "ctermbg="..dark.magenta)

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
vim.cmd.highlight("diffAdded",   "ctermfg="..bright.green)
vim.cmd.highlight("diffLine",    "ctermfg="..bright.cyan)
vim.cmd.highlight("diffRemoved", "ctermfg="..bright.red)

vim.cmd [[
  highlight! link diffFile      NONE
  highlight! link diffIndexLine NONE
  highlight! link diffSubname   NONE
]]
