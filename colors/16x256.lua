-------------------
-- Initial Setup --
-------------------

vim.opt.background = "dark"

vim.cmd [[
  highlight clear
  syntax reset
]]

vim.g.colors_name = "16x256"

----------------------------
-- User Interface Objects --
----------------------------

vim.cmd [[
  highlight Search ctermfg=16
  highlight VertSplit cterm=none
  highlight Visual ctermfg=231
]]

------------------
-- Text Objects --
------------------

vim.cmd [[
  highlight MatchParen ctermbg=none cterm=underline
]]

---------------------
-- Plugin Specific --
---------------------

vim.cmd [[
  highlight NvimTreeFolderIcon ctermfg=blue
]]
