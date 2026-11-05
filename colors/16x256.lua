-- 16x256.nvim - v0.0.7 WIP ALPHA BETA 2000
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
vim.api.nvim_set_option_value("background", "dark", {})
vim.api.nvim_set_option_value("termguicolors", false, {})
vim.cmd([[
  highlight clear
  syntax reset
]])
vim.g.colors_name = "16x256"

local function highlight(name, attrs)
  vim.api.nvim_set_hl(0, name, vim.tbl_extend("force", attrs, { update = true }))
end

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
highlight("Comment", { ctermfg = static.tan })
highlight("Error", { ctermfg = static.white, ctermbg = dark.red })
highlight("Folded", { ctermfg = bright.cyan, ctermbg = static.grey27 })
highlight("MatchParen", { ctermbg = "NONE", cterm = { underline = true } })
highlight("NonText", { ctermfg = bright.black })
highlight("Search", { ctermfg = static.black, ctermbg = dark.yellow })
highlight("SignColumn", { ctermfg = bright.cyan, ctermbg = "NONE" })
highlight("StatusLineNC", { ctermfg = static.black, ctermbg = static.grey66, cterm = {} })
highlight("VertSplit", { ctermfg = static.white, cterm = {} })
highlight("Visual", { ctermfg = static.white, ctermbg = static.grey35 })

highlight("CursorLineNr", { ctermfg = bright.red, cterm = {} })
highlight("LineNr", { ctermfg = bright.black })

highlight("DiffAdd", { ctermfg = static.black, ctermbg = dark.green })
highlight("DiffChange", { ctermfg = static.black, ctermbg = dark.yellow })
highlight("DiffDelete", { ctermfg = static.black, ctermbg = dark.red })
highlight("DiffText", { ctermfg = static.black, ctermbg = dark.red })

highlight("Pmenu", { ctermfg = static.white, ctermbg = static.grey27 })
highlight("PmenuSel", { ctermfg = static.black, ctermbg = bright.yellow })

highlight("SpellBad", { ctermfg = static.white, ctermbg = dark.red })
highlight("SpellCap", { ctermfg = static.white, ctermbg = dark.magenta })
highlight("SpellLocal", { ctermfg = static.white, ctermbg = dark.magenta })
highlight("SpellRare", { ctermfg = static.white, ctermbg = dark.magenta })

vim.api.nvim_set_hl(0, "ErrorMsg", { link = "Error" })
vim.api.nvim_set_hl(0, "FoldColumn", { link = "Folded" })
vim.api.nvim_set_hl(0, "SpecialKey", { link = "NonText" })

vim.api.nvim_set_hl(0, "Todo", { link = "Comment" })
vim.api.nvim_set_hl(0, "vimCommentTitle", { link = "Comment" })

vim.api.nvim_set_hl(0, "ColorColumn", { link = "Visual" })
vim.api.nvim_set_hl(0, "CursorColumn", { link = "Visual" })
vim.api.nvim_set_hl(0, "CursorLine", { link = "Visual" })

--------------------
-- Filetype: diff --
--------------------
highlight("diffAdded", { ctermfg = bright.green })
highlight("diffLine", { ctermfg = bright.cyan })
highlight("diffRemoved", { ctermfg = bright.red })

vim.api.nvim_set_hl(0, "diffFile", {})
vim.api.nvim_set_hl(0, "diffIndexLine", {})
vim.api.nvim_set_hl(0, "diffSubname", {})
